<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
	<title>Registration Form Of HOS</title>
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
	<style>
		body{
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background: linear-gradient(to left top , #174c4e, rgb(163, 232, 246));
}
.main{
	width: 350px;
	height: 600px;
	overflow: hidden;
	background: url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #3fbbc0;
}
#chk{
	display: none;
}
.signup{
	position: relative;
	width:100%;
	height: 100%;
}
label{
	color: #fff;
	font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 45px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
.input-box{
	display: flex;
	justify-content: center;
	margin-top: 25px;

}
input{
	width: 70%;
	height: 15px;
	background: #e0dede;	
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
button{
	width: 70%;
	height: 40px;
	margin: 0 auto 0;
	justify-content: center;
	display: block;
	color: #fff;
	background: #107477;
	font-size: 1em;
	font-weight: bold;
	margin-top: 20px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
    box-shadow:0px 5px 15px(rgba(0, 0, 0, 0.5));
}
button:hover{
	background:  #107477;
}
.login{
	height: 460px;
	background: #eee;
	border-radius: 60% / 10%;
	transform: translateY(-110px);
	transition: .8s ease-in-out;
}
.login label{
	color: #107477;
	transform: scale(.6);
}

#chk:checked ~ .login{
	transform: translateY(-500px);
}
#chk:checked ~ .login label{
	transform: scale(1);	
}
#chk:checked ~ .signup label{
	transform: scale(.6);
}
span{
	display: flex;
	justify-content: center;
	font-size: small;
	font-style: italic;
	color:red;
}

	</style>

</head>
<body>




	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">

			<!--<form:form modelAttribute="registerBean" method="Post" action="/HOS/register">-->
					<span>${success}</span>
					<label for="chk" aria-hidden="true" style="color: #065558">Register Form</label>
					<span>${bindingerror}</span>
					<span>${notUser}</span>
					<div class="input-box">
						<form:input type="email"  placeholder="userEmail" path="userEmail"/> 
					</div>
						<span> ${sameEmail}</span>
						<span><form:errors path = "userEmail" ></form:errors></span>
					<div class="input-box">
						<form:input type="text"  placeholder="userName"  path="userName"/>
					</div>
					<span><form:errors path = "userName" ></form:errors></span>
					<div class="input-box">
						<form:input type="password" placeholder="userPassword" path="userPassword"/>
					</div>
					<span>${passwordError2 }</span>
					<span><form:errors path = "userPassword"></form:errors></span>
					<div class="input-box">
						<input type="password" name="cPassword" placeholder="Confirm Password"/>
					</div>		
					<span><form:errors path ="userPassword"></form:errors></span>
					<span>${passwordError1}</span>
					<form:button>Register</form:button>
					
				</form:form>
			</div>

			<div class="login">
				<!--<form:form modelAttribute="registerBean" method="Post" action="/HOS/login">-->
					<label for="chk" aria-hidden="true">Login</label>
					<div class="input-box">
						<form:input type="email"  placeholder="userEmail" path="userEmail"/>
					</div>
					<div class="input-box">
						<form:input type="password" placeholder="userPassword" path="userPassword"/>
					</div>
					<span><form:errors path = "userPassword" style="color:red;"></form:errors></span>
					<form:button>Login</form:button>
				</form:form>
			</div>
	</div>
</body>
</html>
