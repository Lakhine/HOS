<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<span>${bindingerror}</span>
<form:form modelAttribute="registerBean" method="Post" action="/HOS/processlogin">
<label for="chk" aria-hidden="true">Login</label>
					<form:select class="form-select" aria-label="Education" id="userRole" path="roleName">
                    				<option value="none" selected disabled hidden>Select Role</option>
                        			<option value="Admin">Admin</option>
                        			<option value="User" >User</option>
                    			</form:select>
						<form:input type="email"  placeholder="userEmail" path="userEmail"/><br>
					
					
						<form:input type="password" placeholder="userPassword" path="userPassword"/><br>
					
					<span><form:errors path = "userPassword" style="color:red;"></form:errors></span>
					<form:button>Login</form:button><br>
					<span>${notUser}</span>
					<span>${bindingerror1}</span>
				</form:form>
</body>
</html>