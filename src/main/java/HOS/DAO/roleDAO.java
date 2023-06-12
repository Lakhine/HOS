package HOS.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import HOS.DTO.roleResponseDTO;
@Service("roledao")
public class roleDAO {
	static Connection con = null;
	static {
		con = MyConnection.getConnection();
		}
	public ArrayList<roleResponseDTO> getAllrole(){
		ArrayList<roleResponseDTO> Rlist = new ArrayList<>();
		String sql = "select * from roletable";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				roleResponseDTO Rres = new roleResponseDTO();
				Rres.setRoleId(rs.getInt("roleId"));
				Rres.setRoleName(rs.getString("roleName"));
				Rlist.add(Rres);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Rlist;
	}
}
