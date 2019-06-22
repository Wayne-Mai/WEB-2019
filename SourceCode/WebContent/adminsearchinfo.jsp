<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page import="com.bean.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.OutputStream" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>加班历史信息</title>
    <style>


        #table_wrapper {
            width: 900px;
            margin: 0px auto;
            background: rgba(255, 255, 255, 0.5);
            height: 800px;
            left: 600px;
            border-top-right-radius: 10px;
            border-top-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border-bottom-left-radius: 10px;
        }

        table {

            border-collapse: collapse;

            font-family: Futura, Arial, sans-serif;

            text-align: center;

            width: 800px;

            margin: 20px auto;
        }




        caption {

            font-size: larger;

            margin: 1em auto;

        }

        th {
            padding: .65em;
            color: #00868B;
            border-bottom: 1px solid #00868B;
            border-top: 1px solid #00868B;
            text-align: center;
        }

        td {

            color: #00868B;

            padding: .65em;

            border-bottom: 1px solid #00868B;

            border-top: 1px solid #00868B;

            text-align: center;

        }


        a:link {
            color: #00868B;
            text-decoration: none;
        }

        /* 未访问链接*/
        a:visited {
            color: #00868B;
            text-decoration: none;
        }

        a:hover {
            color: #FF6A6A;
            text-align: center;
            text-decoration: none;
        }

        a:active {
            color: #FF6A6A;
            text-decoration: none;
            text-align: center;
        }


        #main {
            background-color: #FFFFFF;
            background-size: cover;
            overflow: hidden;
            padding: 0px 0px 5px 0px;
            background-image: url(bk2.jpeg);
            /* background-attachment: fixed; */
        }

        body {
            font-family: Arial, sans-serif;
            color: #000000;
            font-size: 12px;
            margin: 0px;
            padding: 0px;
            background: #005825;
        }


        .item {
            position: absolute;
            top: 400px;

            height: 30px;
            width: 200px;
            text-align: center;
            background: rgba(255, 255, 255, 1);
            border-bottom-right-radius: 6px;
            border-bottom-left-radius: 6px;
        }

        #item1 {
            left: 25%;
        }

        #item2 {
            left: 40%;
        }

        #item3 {
            left: 55%;
        }


        .bg {
            position: absolute;
            top: 200px;
            height: 200px;
            width: 200px;

            background-size: cover; /* 图片平铺拉伸，适应屏幕 */
            border-top-left-radius: 6px;
            border-top-right-radius: 6px;
        }

        #bg1 {
            left: 25%;
            background-image: url(10.png);

        }

        #bg2 {
            left: 40%;
            background-image: url(11.png);

        }

        #bg3 {
            left: 55%;
            background-image: url(12.png);

        }

        #wrapper {
            width: 100%;
            height: 300px;
            margin: 0px auto;
            padding-top: 100px;

        }


        #header {
            width: 998px;
            height: 108px;
            margin: 0px auto;
            position: relative;
            padding: 0px;

        }


        #footer {
            width: 958px;
            height: 85px;

            font-size: 12px;
            color: #FFFFFF;

            padding: 20px 20px;
            margin: 0px auto;
            _height: 105px;
        }

        .bottomlogo {
            width: 160px;
            height: 40px;
            padding: 5px 10px;
            border-right: #FFFFFF 1px solid;
            float: left;
        }

        .bottomcontact_cn {
            width: 260px;
            height: 40px;
            padding: 2px 20px 5px 20px;
            line-height: 24px;
            border-right: #FFFFFF 1px solid;
            float: left;
        }

        .bottomcontact_en {
            width: 400px;
            height: 40px;
            padding: 2px 20px 5px 20px;
            line-height: 24px;
            float: left;
        }

        .copyright {
            padding: 10px;
            margin: 0px;
            color: #99BCA8;
            font-size: 12px;
            text-align: center;
            word-spacing: 3px;
        }

        .copyright a:active, .copyright a:link, .copyright a:visited {
            color: #99BCA8;
            text-decoration: none;
        }

        #logo {
            bottom: 10px;
            position: absolute;
            left: 10px;
        }

        .clear {
            clear: both;
        }



    </style>
</head>
<body>

<div id="header">
    <div id="logo">
        <img src="logo.jpg" alt="中山大学">
    </div>
</div>


<div id="main">
    <div id="wrapper">
        <div id="bg1" class="bg"></div>
        <div id="bg2" class='bg'></div>
        <div id="bg3" class="bg"></div>
        <div id="item1" class="item"><a href="auditServlet">审核请假申请信息</a></div>
        <div id="item2" class="item"><a href="adminSearchServlet">查看请假信息</a></div>
        <div id="item3" class="item"><a href="savesuccess.jsp">生成请假信息统计表</a></div>
    </div>


    <div id="table_wrapper">
        <br>
        <br>
        <table align="center">
            <% ArrayList<Extraworkinfo> rs = (ArrayList<Extraworkinfo>) request.getAttribute("result"); %>
            <tr>
                <th>姓名</th>
                <th>学号</th>
                <th>申请请假日期</th>
                <th>请假类型</th>
                <th>请假开始时间</th>
                <th>请假结束时间</th>
                <th>审核状态</th>
            </tr>
            <%
                for (Extraworkinfo info : rs) {
            %>
            <tr>
                <td><%=info.getName()%>
                </td>
                <td><%=info.getId() %>
                <td><%=info.getDate()%>
                </td>
                <td><%=info.getType()%>
                </td>
                <td><%=info.getTimeb()%>
                </td>
                <td><%=info.getTimee()%>
                </td>
                <td><%=info.getConfirmstatus()%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    <br>
</div>


<div id="footer">
    <div class="bottomlogo">
        <img src="logo-bottom.jpg"></div>
    <div class="bottomcontact_cn">通讯地址:广州市新港西路135号 邮编:510275<br>
        电话: 020-84112828
    </div>
    <div class="bottomcontact_en">
        Address: No. 135, Xingang Xi Road, Guangzhou, 510275, P. R. China<br>
        TEL: +86-20-84112828
    </div>
    <div class="clear"></div>
    <div class="copyright">中山大学版权所有 COPYRIGHT©1999-2013 , SUN YAT-SEN UNIVERSITY - <a href="#">联系我们</a> - <a href="#">网站地图</a>
        - <a href="#">粤ICP备05008892号</a></div>
</div>
<!--footer end-->

</body>
</html>