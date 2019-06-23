package com.servlet;

import java.io.IOException;

import com.bean.*;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class adminSearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        try {
            /*
             * HttpSession session=request.getSession(); int
             * wno=(int)session.getAttribute("wno");
             */
            ArrayList<Extraworkinfo> info_list = new ArrayList<Extraworkinfo>();

            String driverName = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://172.18.187.10:3306/boke16337157";
            String userName = "user";
            String userPwd = "123";
            Connection dbConn = null;
            dbConn = DriverManager.getConnection(dbURL, userName, userPwd);
            PreparedStatement ps;
            String sql = "select w.wname 姓名,w.id 学号,ex.wtype 请假类型,ex.workdate 申请请假日期,ex.timeb 请假开始时间," +
                    "ex.timee 请假结束时间,ex.confirmstatus 审核状态,w.pwno 审核人 " +
                    "from extraworkinfo ex,worker w where ex.wno=w.wno order by ex.workdate desc";
            ps = dbConn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Extraworkinfo info = new Extraworkinfo();
                info.setName(rs.getString("姓名"));
                info.setType(rs.getInt("请假类型"));
                info.setDate(rs.getDate("申请请假日期").toString());
                info.setTimeb(rs.getTime("请假开始时间").toString());
                info.setTimee(rs.getTime("请假结束时间").toString());
                if (rs.getBoolean("审核状态") == false) {
                    info.setConfirmstatus("未通过");
                } else {
                    info.setConfirmstatus("已通过");
                }
                info.setPname(rs.getString("审核人"));

                info.setId(rs.getInt("学号"));

                info_list.add(info);
            }

            request.setAttribute("result", info_list);
            ps.close();
            dbConn.close();
            // 关闭连接
            request.getRequestDispatcher("adminsearchinfo.jsp").forward(request, response);

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
