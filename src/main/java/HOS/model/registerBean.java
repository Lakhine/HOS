package HOS.model;

import javax.validation.constraints.NotEmpty;

public class registerBean {
	@NotEmpty
	private String userName;
	@NotEmpty
	private String userEmail;
	@NotEmpty
	private String userPassword;
	
	private Integer roleId;

	public String getUserName() {
		return userName;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}
