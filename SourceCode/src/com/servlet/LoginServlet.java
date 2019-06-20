package com.servlet;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


public class LoginServlet extends HttpServlet{

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
        doGet(request, response);  
    }  
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		String wname=request.getParameter("wname");
		String password=request.getParameter("password");
		request.setAttribute("wname", wname);
		String driverName="com.mysql.jdbc.Driver";
		String dbURL="jdbc:mysql://172.18.187.10:3306/boke16337157";
		String userName="user";
		String userPwd="123";
		Connection dbConn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			dbConn= DriverManager.getConnection(dbURL,userName,userPwd);
			String sql="select * from worker where wname= ? and password= ?";
			PreparedStatement ps=dbConn.prepareStatement(sql);
			ps.setString(1, wname);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				HttpSession session=request.getSession();
				session.setAttribute("wno", rs.getInt("wno"));
				if(rs.getString("pwno") != null){
					request.getRequestDispatcher("welcome_worker.jsp").forward(request, response);
				}
				else{
					
					request.getRequestDispatcher("welcome_admin.jsp").forward(request, response);
				}
			}
			else{
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			ps.close();
			dbConn.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}