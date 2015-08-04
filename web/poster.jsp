<%-- 
    Document   : poster
    Created on : Aug 3, 2015, 11:12:52 PM
    Author     : Vishakha Mehan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <form action="post" method="post">
        <div class="form-group">
            <div class="row">
                <div class="col-lg-2 col-sm-offset-1">           
     <br/>Title:<input type="text" name="title"><br>
     <br/>Requirements:<input type="text" name="requirements"><br>
     <br/><input type="submit" value="Submit">
                </div>
            </div>
        </div>
   </form>
    </body>
</html>
