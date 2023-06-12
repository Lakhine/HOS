package HOS.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import HOS.DTO.userRequestDTO;
import HOS.DTO.userResponseDTO;
import HOS.DAO.roleDAO;
import HOS.DAO.userDAO;
import HOS.model.registerBean;
import HOS.DTO.roleRequestDTO;
import HOS.DTO.roleResponseDTO;

@Controller
public class userController {
	@Autowired
	private userDAO userdao;
	@Autowired
	private roleDAO roledao;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView registerView() {
		return new ModelAndView("loginregister","registerBean",new registerBean());
	}
	@RequestMapping(value="/register",method=RequestMethod.POST) //Registration
	public String register(
			@ModelAttribute("registerBean")
			@Validated registerBean bean,
			BindingResult br,
			ModelMap m,
			@RequestParam("cPassword")
			String cPassword
			) {
	if (br.hasErrors()){
		m.addAttribute("bindingerror","Binding Result error");
			return "loginregister";
			
		}
		userRequestDTO req = new userRequestDTO();
		ArrayList<userResponseDTO> list = userdao.getAllusers();
//		roleRequestDTO Rreq = new roleRequestDTO();
//		ArrayList<roleResponseDTO> Rlist = roledao.getAllrole();
		req.setUserEmail(bean.getUserEmail());
		req.setUserPassword(bean.getUserPassword());
		req.setUserName(bean.getUserName());
//		Rreq.setRoleId(bean.getUserRole());
		boolean samePassword = false;
		boolean sameEmail=false;
		if(cPassword.equals(bean.getUserPassword())) {  		//password duplicate
			samePassword = true;
			for(userResponseDTO res : list) {
				if(bean.getUserEmail().equals(res.getUserEmail())) {  //email duplicate
					sameEmail=true;
					m.addAttribute("sameEmail","This email is already existing!!");
					return "loginregister";
				}
			}
			if(!sameEmail) {
				int result = userdao.insertuser(req);
				if(result==0) {
					m.addAttribute("passwordError1","Insert failed");
					return "loginregister";
				}
		}
			}
			
		if(!samePassword) {
			m.addAttribute("passwordError2","Password doesn't match");
			return "loginregister";
		}
		
		m.addAttribute("success","Registeration success");
		return "redirect:/";
	}

//@RequestMapping(value="/login",method=RequestMethod.POST)  //login( need to check and if there is no error use it)
//public String login(
//		@ModelAttribute("registerBean")
//		@Validated
//		registerBean bean,
//		BindingResult br,
//		ModelMap m,
//		
//		HttpSession session
//		) {
//	if(br.hasErrors()) {
//		m.addAttribute("bindingerror1","Binding error");
//		return "loginregister";
//	}
//	ArrayList<userResponseDTO> list = userdao.getAllusers();
//	boolean correctUser = false;
//	for(userResponseDTO res : list) {
//		if(bean.getUserEmail().equals(res.getUserEmail())&&bean.getUserPassword().equals(res.getUserPassword())) {
//			correctUser = true;
//			session.setAttribute("currentUserName", res.getUserName());
//			break;
//		}
//	}
//	if(!correctUser) {
//		m.addAttribute("notUser","Email or Password wrong!!");
//		return "loginregister";
//	}
//	return "homepage";
//}
}
