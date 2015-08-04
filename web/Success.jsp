<%@page import="com.test.MySQL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<div class="container">
<%
String Fname1=session.getAttribute("fname").toString();
int a=Integer.parseInt(session.getAttribute("mobilenumber").toString());
MySQL sq=new MySQL();
Connection con=sq.getConnection();
PreparedStatement ps=con.prepareStatement("select Percentage from Student where MOBILENO=? and Percentage >60");
ps.setLong(1,a);
PreparedStatement stmt=con.prepareStatement("select * from post");
ResultSet r=stmt.executeQuery();
ResultSet rs=ps.executeQuery();
if(rs.next())
{
out.println("<strong>You are Eligible for Interview</strong>");
out.println("<br><br><br>");
while(r.next()){
    out.println("<br>");
    out.print("<strong>Job Title:</strong> " +r.getString("title")+"               ");
    out.println("<br>");
    out.println("<strong>Requirement:</strong> "+r.getString("requirement"));
}

}
else
{
    out.println("You are not eligible because yourPercentage is less than 60");
}
%>
</div>
</body>
</html>