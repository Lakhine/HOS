<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Appointment</title>
<!-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/" /> -->
 <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet" />
    <style>
        
    /* Header styles */
    header {
      /* background-color: #333; */
      color:  #3fbbc0;
      padding: 20px;
      text-align: center;
    }

    h1 {
      margin: 0;
    }

    /* Appointment form styles */
    .appointment-container {
      max-width: 800px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .appointment-container h2{
      text-align: center;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    .form-group input[type="text"]{
      width: 100%;
      padding: 10px;
      border-radius: 3px;
      border: 1px solid #ccc;
      margin-bottom: 20px;
    }

    .form-group {
      display: flex;
      flex-direction: row;
    }

    .fname {
      width: 48%;
    }

    .lname {
      width: 48%;
      margin-left: 30px;
    }

    .form-group label {
      font-weight: bold;
    }
    .form-group1 label{
      font-weight: bold;
    }
    .form-group2 label{
      font-weight: bold;
    }
    .form-group3 label {
      font-weight: bold;
    }
    .form-group2 input[type="text"],
    .form-group1 input[type="email"],
    .form-group3 select {
      width: 100%;
      padding: 10px;
      border-radius: 3px;
      border: 1px solid #ccc;
      margin-bottom: 20px;
    }

    .form-group button[type="submit"] {
      display: block;
      font-size: large;
      width: 100%;
      padding: 10px;
      margin-top: 10px;
      background-color:  #3fbbc0;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }
    .form-group button:hover{
      color: #187e81;
      background-color: powderblue;
    }
    .success-message,
    .error-message {
      padding: 10px;
      border-radius: 3px;
      margin-top: 10px;
    }

    .success-message {
      background-color: #dff0d8;
      border: 1px solid #d0e9c6;
      color: #3c763d;
    }


    .error-message {
      background-color: #f2dede;
      border: 1px solid #ebccd1;
      color: #a94442;
    }
  </style>
</head>
<body class="sub_page">
	<div class="hero_area">

    	<div class="hero_bg_box">
      		<img src="${pageContext.request.contextPath}/resources/images/hero-bg.png" alt="">
    	</div>

   	 <!-- header section strats -->
   		<jsp:include page="header.jsp"></jsp:include>
     <!-- end header section -->
     </div>
	  <header>
    <h1>Welcome to Our Hospital</h1>
  </header>

  <div class="appointment-container">
    <h2>Make an Appointment</h2>
    <form id="appointmentForm">
      <div class="form-group">
        <div class="fname">
          <label for="fname">First Name:</label>
          <input type="text" id="fname" name="fname" required placeholder="Enter Your FirstName">
        </div>
        <div class="lname">
          <label for="lname">Last Name:</label>
          <input type="text" id="lname" name="lname" required placeholder="Enter Your LastName">
        </div>
      </div>
      <div class="form-group1">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required placeholder="Enter Your Email">
      </div>
      <div class="form-group2">
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required placeholder="Enter Your Phone Number">
      </div>
      <div class="form-group3">
        <label for="department">Department:</label>
        <select id="department" name="department" required>
          <option value="" selected disabled>Select department</option>
          <option value="Cardiology">Cardiology</option>
          <option value="Dermatology">Dermatology</option>
          <option value="Orthopedics">Orthopedics</option>
          <option value="Pediatrics">Pediatrics</option>
          <option value="Neurology">Neurology</option>
        </select>
      </div>
      <div class="form-group">
        <button type="submit">Submit</button>
      </div>
    </form>
    <div id="successMessage" class="success-message" style="display: none;"></div>
    <div id="errorMessage" class="error-message" style="display: none;"></div>
  </div>
	
<!-- footer section -->
  <jsp:include page="footer.jsp"></jsp:include>
  <!-- footer section -->
<!-- jQery -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
  <!-- owl slider -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- custom js -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>