<%@page import="com.test.MySQL"%>
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
                        
                    </ul>
                </div>

</head>
<body>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
String Fname1=session.getAttribute("fname").toString();
int a=Integer.parseInt(session.getAttribute("mobilenumber").toString());
MySQL sq=new MySQL();
Connection con=sq.getConnection();
PreparedStatement ps=con.prepareStatement("select Percentage from Student where MOBILENO=? and Percentage >60");
ps.setLong(1,a);

ResultSet rs=ps.executeQuery();
if(rs.next())
{
out.println("You are Eligible for Interview");
}
else
{out.println("You are not eligible because yourPercentage is less than 60");
}
%>
<div data-role="footer">
                <h2>&copy;2015 Vishakha</h2>
            </div>
</body>
</html>