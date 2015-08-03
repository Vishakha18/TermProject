package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Test() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
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
	
		System.out.println("dffb");
		String Fname=request.getParameter("name");
		String Lname=request.getParameter("name1");
		String Email=request.getParameter("email");
		String Qualification=request.getParameter("edu");
		String Percentage=request.getParameter("per");
		String MobileNo =request.getParameter("mobile");
		
	try {
		PrintWriter pw=response.getWriter();
		ResultSet rs=null;
		Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://ipro.lambton.on.ca/inventory";
                String username="products";
                String password="products";
		Connection con=DriverManager.getConnection(url,username,password);
		pw.write("Connection Established"+con);
		
		PreparedStatement ps=con.prepareStatement("insert into Student values(Student1.nextval,?,?,?,?,?,?)");
		ps.setString(1,Fname);
		ps.setString(2,Lname);
		ps.setString(3,Email);
		ps.setString(4,Qualification);
		ps.setString(5,Percentage);
		ps.setString(6,MobileNo);
		rs=ps.executeQuery();
			response.sendRedirect("Test.jsp");
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

}
