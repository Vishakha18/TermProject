<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR System</title>
</head>
<body>

<h1 align="center">Login Page</h1> 

<div align=right><a href="hr.jsp">HR Login</a></div>

 <center> <h2>SignUp Details</h2> 
  <form action="LoginCheck" method="post">
     <br/>First Name:<input type="text" name="username"><br>
     <br/>Password:<input type="password" name="password"><br>
     <br/>Mobile Number:<input type="text" name="mobilenumber"><br>
     <br/><input type="submit" value="Submit">
     &nbsp;<a href="Test1.jsp">Sign Up</a>
  </form> 
     ${invalid}
 </center>
</body>
</html>