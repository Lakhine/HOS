package HOS.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import HOS.DTO.userRequestDTO;
import HOS.DTO.userResponseDTO;
@Service("userdao")
public class userDAO {
static Connection con = null;
static {
	con = MyConnection.getConnection();
	}
public int insertuser(userRequestDTO req) {
	int result = 0;
	String sql ="insert into usertable(userEmail,userPassword,userName)"+"values(?,?,?)";
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,req.getUserEmail());
		ps.setString(2, req.getUserPassword());
		ps.setString(3,req.getUserName());
		result = ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
	return result;
	}
public int updateuser(userRequestDTO req) {
	int result =0;
	String sql="update usertable set userPassword=?,userName=? where userEmail=?";
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,req.getUserPassword());
		ps.setString(2, req.getUserName());
		ps.setString(3, req.getUserEmail());
		result = ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
	return result;
	}
public int deleteuser(userRequestDTO req) {
	int result =0;
	String sql="delete from usertable where userEmail=?";
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, req.getUserEmail());
		result = ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
	return result;
	}
public ArrayList<userResponseDTO> getAllusers(){
	ArrayList<userResponseDTO> list = new ArrayList<>();
	String sql = "select * from usertable";
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			userResponseDTO res = new userResponseDTO();
			res.setUserEmail(rs.getString("userEmail"));
			res.setUserPassword(rs.getString("userPassword"));
			res.setUserName(rs.getString("userName"));
			list.add(res);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
	return list;
}
public userResponseDTO selectEmail(userRequestDTO req) {
	userResponseDTO res = new userResponseDTO();
	String sql = "selcect userEmail from where userEmail=?";
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, req.getUserEmail());
		ResultSet rs = ps.executeQuery();
		while(rs.next());
		res.setUserPassword(rs.getString("userPassword"));
		res.setUserName(rs.getString("userName"));
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return res;
}
}
