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
	if(request.getParameter("pass").equals(request.getParameter("cpass"))){
            	System.out.println("dffb");
		String Fname=request.getParameter("name");
		String Lname=request.getParameter("name1");
		String Email=request.getParameter("email");
		String Qualification=request.getParameter("edu");
		int Percentage=Integer.parseInt(request.getParameter("per"));
		int MobileNo =Integer.parseInt(request.getParameter("mobile"));
                	
		
	try {
                //response.getWriter().println("Start");
                MySQL sq=new MySQL();
		Connection con=sq.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into Student (fname,lname,email,qualification,percentage,mobileno,password) values(?,?,?,?,?,?,?)");
                //response.getWriter().println("After Query");
                ps.setString(1,Fname);
		ps.setString(2,Lname);
		ps.setString(3,Email);
		ps.setString(4,Qualification);
		ps.setInt(5,Percentage);
		ps.setInt(6,MobileNo);
                ps.setString(7,request.getParameter("pass"));
                //response.getWriter().println("Before Exce");
		ps.executeUpdate();
                //response.getWriter().println("Query Executed");
		//response.sendRedirect("Test.jsp");
		request.getRequestDispatcher("Test.jsp").forward(request, response);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
                System.out.println(e.getMessage());
	}
        }else{
            request.setAttribute("Invalid", "Password and Confirm Password mismatches");
            request.getRequestDispatcher("Test1.jsp").forward(request,response);
        }
	
		
	}

}
