<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<div data-role="navbar" class="hr">
                    <ul>
                        <li><a href="Test1.jsp" data-theme="a"  data-icon="home" data-transition="pop">Sign Up</a></li>
                        <li><a href="Test.jsp" data-theme="f" data-icon="star" data-transition="pop">Login</a></li>
                        <li><a href="hr.jsp" data-theme="c" data-icon="grid" data-transition="pop">HR Login</a></li>
                        <li><a href="Success.jsp" data-theme="d" data-icon="location" data-transition="pop">Success Login</a></li>
                       
                    </ul>
                </div>

</head>
<body>
<form action="Test" method="post">
<br/>First Name: <div>   <input type="text" name="name"> </div>
 <br/>Last Name: <div>    <input type="text" name="name1"> </div>
 <br/>Email Address: <div><input type="text" name="email"></div>
 <br/>Qualification:<div> <input type="text" name="edu">  </div>
 <br/>Percentage:  <div>  <input type="text" name="per"> </div>
 <br/>Mobile Number:<div> <input type="text" name="mobile"> </div>
 <br/>Password:<div> <input type="password" name="pass"> </div>
 <br/>Confirm Password:<div> <input type="password" name="cpass"> </div>
 <br/>              <div> <input type="submit" value="Submit"></div>
 </form>
    
    ${Invalid}
</body>
</html>