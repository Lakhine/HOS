package HOS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class registerController {
//	@RequestMapping(value ="/",method = RequestMethod.GET)
//	public ModelAndView registerView() {
//		return new ModelAndView("loginregister","registerBean",new registerBean());
//	
//	}
//	@RequestMapping(value="/register",method=RequestMethod.POST)
//	public String register() {
//			return "redirect:/";

//}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String register() {
		return "loginregister";
	}
}
