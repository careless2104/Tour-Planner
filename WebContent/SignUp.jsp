<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html >

<html>
<head>
	<style type="text/css">
	body {background-image:url("${pageContext.request.contextPath}/image/beach.jpg");
			background-repeat:no-repeat;
			background-size:cover;
			}
	form {
	border: 1px solid #c6c7cc;
	border-radius: 5px;
	background: #fff;
	font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
	overflow: hidden;
	width: 500px;
	position:absolute;
	top: 100px;
	left: 425px;
	}
	fieldset {
	border: 1px;
	margin: 1px;
	padding: 1px;
	}
	input {
	border-radius: 50px;
	font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
	margin: 0;
	}
	.account-info {
	padding: 20px 20px 0 20px;
	}
	.account-info label {
	color: #395870;
	display: block;
	font-weight: bold;
	margin-bottom: 20px;
	}
	.account-info input {
	background: #fff;
	border: 1px solid #c6c7cc;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .1);
	color: #636466;
	padding: 6px;
	margin-top: 6px;
	width: 100%;
	}
	.account-action {
	background: #f0f0f2;
	border-top: 1px solid #c6c7cc;
	padding: 20px;
	}	
	.account-action .btn {
	background: linear-gradient(#49708f, #293f50);
	border: 0;
	color: #fff;
	cursor: pointer;
	font-weight: bold;
	padding: 8px 16px;
	position:relative;
	top: 0px;
	left: 38%;
	}
		h1 {font-family:daniel;
			text-align:center;
			}
	.some-class label { 
					position:relative;
					left: 5px;}
					input[type=radio], input.radio { position:relative;
					left: 45px;clear:none; margin: 5px 50px 0 5px; }


	</style>
	<title>Signup</title>
</head>

<body>

<form action="checkLogin" method="post">
	<fieldset class="account-info">
    <label>
      First Name
      <input type="text" name="fname" required placeholder="firstname">
    </label>
    <label>
      Last Name
      <input type="text" name="lname" required placeholder="lastname">
    </label>
	<label>
      Email
      <input type="text" name="email" required placeholder="example@email.com">
    </label>
	<label>
      Username
     <input type="text" name="username" required placeholder="username">
    </label>
      Password
      <input type="password" name="password" required placeholder="password">
  
	
  </fieldset>
  
  <fieldset>
  <div class="some-class">
	Gender: 
    <input type="radio" class="radio" name="x" value="m" id="y" />
    <label for="y">Male</label>
    <input type="radio" class="radio" name="x" value="f" id="z" />
    <label for="z">Female</label>
  </div>
</fieldset>
  <fieldset class="account-action">
    <input class="btn" type="submit" name="signup" value="Sign Up">
  </fieldset>
</form>
<h1>Tour Planner</h1>
</body>
</html>