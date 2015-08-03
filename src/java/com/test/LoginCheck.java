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
import javax.servlet.http.HttpSession;

public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
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
	    int count=0;
            try {
                MySQL sq=new MySQL();
                Connection con=sq.getConnection();
                String query="SELECT COUNT(*) count FROM student WHERE fname=? AND password=? AND mobileno=?";
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1, request.getParameter("username"));
                ps.setString(2, request.getParameter("password"));
                ps.setString(3,request.getParameter("mobilenumber"));
                ResultSet rs=ps.executeQuery();
                while(rs.next()){
                    count=rs.getInt("count");
                }
            } catch (Exception e) {
            }
            long mbl=Long.parseLong(request.getParameter("mobilenumber"));
            if(count>0){
                HttpSession session=request.getSession();
                session.setAttribute("fname", request.getParameter("username"));
                session.setAttribute("mobilenumber", request.getParameter("mobilenumber"));
                request.getRequestDispatcher("Success.jsp").forward(request, response);
                
            }else{
                request.setAttribute("invalid", "Password , Username or Mobile number is incorrect");
                request.getRequestDispatcher("Test.jsp").forward(request, response);
            }
		
		
	}

}
