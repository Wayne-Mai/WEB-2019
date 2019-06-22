package com.servlet;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String wname = request.getParameter("wname");
		String password = request.getParameter("password");
		int id = Integer.parseInt(request.getParameter("id"));
		String profile_photo = request.getParameter("profile_photo");
		if (profile_photo  == "") {
			profile_photo = "/Users/wayne/Downloads/PICTURE/web2019/cxk.jpg";
		}

		String driverName = "com.mysql.jdbc.Driver";
		String dbURL = "jdbc:mysql://172.18.187.10:3306/boke16337157";
		String userName = "user";
		String userPwd = "123";
		Connection dbConn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			dbConn = DriverManager.getConnection(dbURL, userName, userPwd);
			String sql = "insert into worker(wname,password,pwno,id,wdepartno,profile_photo) values(?,?,0,?,0,?)";
			PreparedStatement ps = dbConn.prepareStatement(sql);
			ps.setString(1, wname);
			ps.setString(2, password);
			ps.setInt(3, id);
			ps.setString(4, profile_photo);
			int rs = ps.executeUpdate();
			if (rs > 0) {
				request.getRequestDispatcher("registersuccess.jsp").forward(request, response);
			} else {
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