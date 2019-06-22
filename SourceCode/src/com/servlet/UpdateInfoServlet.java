package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UpdateInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		try {
			HttpSession session = request.getSession();
			int wno = (int) session.getAttribute("wno");

			String wname=request.getParameter("wname");
			int id=Integer.parseInt(request.getParameter("id"));
			String profile_photo=request.getParameter("profile_photo");

			String driverName = "com.mysql.jdbc.Driver";
			String dbURL = "jdbc:mysql://172.18.187.10:3306/boke16337157";
			String userName = "user";
			String userPwd = "123";
			Connection dbConn = null;
			dbConn = DriverManager.getConnection(dbURL, userName, userPwd);
			PreparedStatement ps;
			String sql = "UPDATE table_name SET wname=?, id=?, profile_photo=? where wno=?";
			ps = dbConn.prepareStatement(sql);
			ps.setString(1, wname);
			ps.setInt(2, id);
			ps.setString(3, profile_photo);
			ps.setInt(4, wno);
			int rs = ps.executeUpdate();
			if (rs > 0) {
				request.getRequestDispatcher("updatesuccess.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			// πÿ±’¡¨Ω”
			ps.close();
			dbConn.close();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
