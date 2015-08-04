<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR System</title>

<meta charset="utf-8">

	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"></link>
        <link rel="stylesheet" href="resources/styles.css"></link>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    

 <div class="container">
                    <div class="navbar navbar-default">
                        <div class="navbar-header">
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="Test1.jsp"  data-transition="pop">Sign Up</a></li>
                                <li><a href="Test.jsp"  data-transition="pop">Login</a></li>
                                <li><a href="hr.jsp"  data-transition="pop">HR Login</a></li>
                             </ul>
                        </div>
                    </div>
                </div>

</head>
<body>
<form action="Test" method="post">
    <div class="form-group">
            <div class="row">
                <div class="col-lg-2 col-sm-offset-1">
<br/>First Name: <div>   <input type="text" name="name"> </div>
 <br/>Last Name: <div>    <input type="text" name="name1"> </div>
 <br/>Email Address: <div><input type="text" name="email"></div>
 <br/>Qualification:<div> <input type="text" name="edu">  </div>
 <br/>Percentage:  <div>  <input type="text" name="per"> </div>
 <br/>Mobile Number:<div> <input type="text" name="mobile"> </div>
 <br/>Password:<div> <input type="password" name="pass"> </div>
 <br/>Confirm Password:<div> <input type="password" name="cpass"> </div>
 <br/>              <div> <input type="submit" value="Submit"></div><br>
 </form>

    <div class="error">
            <div class="well" style="color:red"> ${invalid}</div>
            
    </div>
    
  
</body>
</html>