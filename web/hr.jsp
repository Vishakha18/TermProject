<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR System</title>
       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"></link>
        <link rel="stylesheet" href="resources/styles.css"></link>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    

 <div class="container">
                    <div class="navbar navbar-default">
                        <div class="navbar-header">
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="Test1.jsp" data-transition="pop">Sign Up</a></li>
                                <li><a href="Test.jsp"  data-transition="pop">Login</a></li>
                                <li><a href="hr.jsp"  data-transition="pop">HR Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
</head>
<body>
    
    <h1 align="center">HR Login Page</h1><br> 
 <form action="Hr" method="post">
     <div class="form-group">
            <div class="row">
                <div class="col-lg-2 col-sm-offset-1">
     <br/>Username:<label for="password" style="color:red" align="center">*</label>
    <input 
        type="text" name="username" >
     <br/>Password:<label for="password" style="color:red">*</label>
     <input type="password" name="password"><br>
                 <br><input type="submit" value="Submit" />
                </div>
            </div>
     </div>
   </form>
   <div class="error">
                <div class="well" style="color:red"> ${invalid}</div>
   </div>
           
    
</body>
</html>