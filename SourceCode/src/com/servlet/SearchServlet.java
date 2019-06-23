package com.servlet;

import java.io.IOException;
import com.bean.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        try {
            HttpSession session = request.getSession();
            int wno = (int) session.getAttribute("wno");
            ArrayList<Extraworkinfo> info_list = new ArrayList<Extraworkinfo>();

            String driverName = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://172.18.187.10:3306/boke16337157";
            String userName = "user";
            String userPwd = "123";
            Connection dbConn = null;
            dbConn = DriverManager.getConnection(dbURL, userName, userPwd);
            PreparedStatement ps;


            String sql = "select w1.profile_photo ͷ��,w1.wname ����,w1.id ѧ��,ex.wtype �������,ex.workdate �����������,ex.timeb ��ٿ�ʼʱ��," +
                    "ex.timee ��ٽ���ʱ��,ex.confirmstatus ���״̬,w2.wname ����� " +
                    "from extraworkinfo ex,worker w1,worker w2 "
                    + "where w1.wno=? and ex.wno=w1.wno and ex.confirmwno=w2.wno order by ex.workdate desc";
            ps = dbConn.prepareStatement(sql);
            ps.setInt(1, wno);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Extraworkinfo info = new Extraworkinfo();
                info.setProfile_photo(rs.getString("ͷ��"));

                info.setName(rs.getString("����"));
                info.setId(rs.getInt("ѧ��"));
                info.setType(rs.getInt("�������"));
                info.setDate(rs.getDate("�����������").toString());
                info.setTimeb(rs.getTime("��ٿ�ʼʱ��").toString());
                info.setTimee(rs.getTime("��ٽ���ʱ��").toString());
                if (rs.getBoolean("���״̬") == false) {
                    info.setConfirmstatus("δͨ��");
                } else {
                    info.setConfirmstatus("��ͨ��");
                }
                info.setPname(rs.getString("�����"));

                info_list.add(info);
            }

            request.setAttribute("result", info_list);
            ps.close();
            dbConn.close();
            // �ر�����
            request.getRequestDispatcher("searchinfo.jsp").forward(request, response);

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
