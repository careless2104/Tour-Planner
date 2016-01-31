<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
	body {background-image:url("${pageContext.request.contextPath}/image/switzerland.jpg");
			background-repeat:no-repeat;}
	form {
	border: 1px solid #c6c7cc;
	border-radius: 5px;
	background: #fff;
	font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
	overflow: hidden;
	width: 500px;
	position:absolute;
	top: 150px;
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
	left: 80px;
	}
		h1 {font-family:daniel;
			text-align:center;
			}

	</style>
	<title>Login</title>
</head>

<body>

<form action="afterLogin" method="post">
	<fieldset class="account-info">
    <label>
      Username
      <input type="text" name="username" required placeholder="username">
    </label>
    <label>
      Password
      <input type="password" name="password" required placeholder="password">
    </label>
  </fieldset>
  <fieldset class="account-action">
    <input class="btn" type="submit" name="submit" value="Login">
    <input class="btn" type="button" name="signup" value="Sign Up" onclick="window.location.href='http://localhost:8080/Planner/SignUp.jsp'" />
	<input class="btn" type="submit" name="eag" value="Sign In as Guest" onclick="window.location.href='http://localhost:8080/Planner/Home.jsp'"/>
  </fieldset>
</form>
<h1>Tour Planner</h1>
</body>
</html>