package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Hr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hr() {
        super();
        // TODO Auto-generated constructor stub
    }
    /**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}
        /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
        /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=null;
		PreparedStatement ps=null;
		PrintWriter pw=null;
		       String Username=request.getParameter("username");
		       String Password=request.getParameter("password");
        
        if(Username.equals("hradmin")){
		try {
			pw=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
                        String url="jdbc:mysql://ipro.lambton.on.ca/inventory";
                        String username="products";
                        String password="products";
			con=DriverManager.getConnection(url,username,password);	
			 ps=con.prepareStatement("select * from Student ");
			ResultSet rs=ps.executeQuery();
			pw.println("<html>");
			
			String d="<table width='500' border='1' cellspacing='0' cellpadding='0'>";
			
			pw.println(d); 
			pw.println("<tr>");
			pw.println("<th>"+"S.No."+"</th>"); 
			pw.println("<th>"+"First Name"+"</th>"); 
			pw.println("<th>"+"Last Name"+"</th>"); 
			pw.println("<th>"+"Email Id"+"</th>"); 
			pw.println("<th>"+"Qualification"+"</th>"); 
			pw.println("<th>"+"Percentage"+"</th>"); 
			pw.println("<th>"+"Mobile Number"+"</th>"); 
			pw.println("<tr>");
			while(rs.next()) 
			{ 
			pw.println("<td>"+rs.getString(1)+"</td>"); 
			pw.println("<td>"+rs.getString(2)+"</td>"); 
			pw.println("<td>"+rs.getString(3)+"</td>"); 
			pw.println("<td>"+rs.getString(4)+"</td>"); 
			pw.println("<td>"+rs.getString(5)+"</td>"); 
			pw.println("<td>"+rs.getString(6)+"</td>"); 
			pw.println("<td>"+rs.getString(7)+"</td>"); 
			
			pw.println("</tr>");
			
			//pw.println("<tr>");
			} 
			pw.println("</table></html>"); 
			
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        }
        