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
<form:form modelAttribute="registerBean" method="Post" action="/HOS/register">
					<span>${success}</span>
					<label for="chk" aria-hidden="true" style="color: #065558">Register Form</label><br>
					<span>${bindingerror}</span>
					<span>${notUser}</span>
					
						<form:input type="email"  placeholder="userEmail" path="userEmail"/> <br>
					
						<span> ${sameEmail}</span>
						<span><form:errors path = "userEmail" ></form:errors></span>
					
						<form:input type="text"  placeholder="userName"  path="userName"/><br>
				
					<span><form:errors path = "userName" ></form:errors></span>
					
						<form:input type="password" placeholder="userPassword" path="userPassword"/><br>
					
					<span>${passwordError2 }</span>
					<span><form:errors path = "userPassword"></form:errors></span>
				
						<input type="password" name="cPassword" placeholder="Confirm Password"/><br>
						
					<span><form:errors path ="userPassword"></form:errors></span>
					<span>${passwordError1}</span>
					<form:button>Register</form:button><br>
					<a href="login">Login<a>
					
				</form:form>
</body>
</html>