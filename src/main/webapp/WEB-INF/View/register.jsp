<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Register</title>
    <!-- style -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0%;
            padding: 0%;
            box-sizing: border-box;
        }

        body {
            background-image: url(reg_bac2.jfif);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .errorsms{
        	display:flex;
        	justify-content: center;
        	font-size:small;
        	font-style: italic;
        	color: red;
        	 
        }

        .all {
            /* border: 2px solid black; */
            width: 600px;
            height: 520px;
            margin: auto;
            margin-top: 1rem;
            /* text-align: center; */
            backdrop-filter: blur(40px);
            box-shadow: rgba(0, 0, 0, 0.24) 8px 13px 18px 10px;
        }

        .log h1 {
            margin-top: 0px;
            /* background-color: wheat; */
            /* border: 1px solid black; */
            color: black;
            /* height: 40px; */
            text-align: center;
            font-family: 'Permanent Marker', 'cursive';
        }

        .log p {
            text-align: center;

        }

        .text h3 {
            font-size: 30px;
            text-align: center;
            padding-top: 1rem;
        }

        .box_one {
            display: flex;
        }

        .box {
            position: relative;
            /* width:300px; */
            border: none;

        }

        .box .input {
            background: transparent;
            width: 200px;
            /* height: 20px; */
            margin-top: 30%;
            margin-left: 3rem;
            border: none;
            border-bottom: 2px solid gray;
            /* border-right: 2px solid black; */
            outline: none;
        }

        .box .title {
            position: absolute;
            left: 0%;
            top: 0;
            font-size: 20px;
            margin-top: 20%;
            margin-left: 3rem;
            transition: all 0.5s ease-in;
        }
        .box .input:focus~span,
        .box .input:valid~span{
            font-size: 15px;
            transform: translateY(-20px);
            transition: all 0.5s ease;
            top: 0%;
        }

        .check {
            margin-top: 2rem;
            font-size: 17px;
        }
        .check label{
            margin-left: 6em;
        }
        .check input[type="checkbox"]{
            margin-right: 1em;
        }

        .bbk {
            padding: 0.7rem 12.5rem;
            border: none;
            background-color: powderblue;
            border-radius: 10px 25px 10px 25px;
            color: black;
            margin-top: 2rem;
            margin-left: 3rem;
            font-size: 20px;
            transition: all 0.6s ease;
            /* width: 200px; */
        }
        .bbk a{
            color: black;
            text-decoration: none;
        }

        .phrase {
            margin-left: 12rem;
            margin-top: 2em;
            font-size: 20px;
            /* color: white; */
        }

        .phrase a {
            color:black;
            margin-left: 2rem;
            text-decoration: none;
            opacity: 60%;
        }

        .phrase a:hover {
            text-decoration: underline;
            color: rgb(83, 83, 235);
            opacity: 100%;
        }

        .bbk:hover {
            background-color: rgb(115, 174, 182);
            box-shadow: rgba(0,0,0,0.35)0px 5px 12px;
        }
    </style>
</head>
<body>
	<div class="log">
        <h1>HOS</h1>
        <p>Stay Healthy</p>
        <div class="all">
        	<span class="errorsms">${bindingerror}</span>
			<span class="errorsms">${notUser}</span>
            <div class="text">
                <h3>Registration Form</h3>
            </div>
            <form:form modelAttribute="registerBean" method="Post" action="/HOS/processregister" >
         	<div class="form">
                	<div class="box_one" >
                    	<div class="box">
                    	<span class="errorsms"><form:errors path = "userEmail" ></form:errors></span><span class="errorsms"> ${sameEmail}</span>
                        	<form:input class="input" type="email" path="userEmail"/>
                        	<span class="title">Email</span>
                    	</div>
                    	<div class="box">
                    		<span class="errorsms"><form:errors path = "userName" ></form:errors></span>
                        	<form:input class="input" type="text"    path="userName"/>
                        	<span class="title">UserName</span>
                    	</div>
                	</div>
               		<div class="box_one">
                    	<div class="box">
                    		<span class="errorsms">${passwordError2 }</span><span class="errorsms"><form:errors path = "userPassword"></form:errors></span>
                        	<form:input class="input" type="password"  path="userPassword"/>
                        	<span class="title">Password</span>
                    	</div>
                    	<div class="box">
                    		<span class="errorsms"><form:errors path ="userPassword"></form:errors></span><span class="errorsms">${passwordError1}</span>
                        	<input class="input" type="password" name="cPassword"/>
                        	<span class="title">Confirm Password</span>
                    	</div>	
                	</div>
                	<div class="check">
                    	<label><input type="checkbox">I agree to the terms & conditions.</label>
                	</div>
                	<form:button class="bbk">Submit</form:button>
                	<h4 class="phrase">Already have an account? <a href="/HOS/login">Login</a> </h4>
                	
            	</div>
            	</form:form>
            
        </div>
    </div>
<!--<form:form modelAttribute="registerBean" method="Post" action="/HOS/register">
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
					
				</form:form>--> 
</body>
</html>