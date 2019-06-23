<%--
  Created by IntelliJ IDEA.
  User: wayne
  Date: 2019-06-23
  Time: 07:05
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" import="java.util.*,java.sql.*"
        contentType="text/html; charset=utf-8"%>


<!DOCTYPEHTML>
<html>
<head>
    <title>学生注册</title>
    <style>
        a:link,a:visited{color:blue;}
        .container{
            margin:0 auto;
            width:500px;
            text-align:center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>学生注册</h1>
    <form name="fileupload" action="fileupload.jsp" method="POST" enctype="multipart/form-data">
        姓名:<input id="wname" type="text" name="wname">
        <br><br>
        密码:<input id="password" name="password" type="text">
        <br><br>
        Wno:<input id="wno" name="wno" type="text">
        <br><br>
        Pno:<input id="pwno" name="pwno" type="text">
        <br><br>
        Wdep:<input id="wdepartno" name="wdepartno" type="text">
        <br><br>
        id:<input id="id" name="id" type="text">
        <br><br>
        <p>头像：<input type="file" name="file" size=48></p>
        <br><br>
        <input type="submit" name="sub" value="注册">
    </form>


</div>
</body>
</html>