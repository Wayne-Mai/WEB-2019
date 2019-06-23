<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    request.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎来到加班申请系统</title>
    <style type="text/css">


        body {
            font-family: Arial,sans-serif;
            color: #000000;
            font-size: 12px;
            margin: 0px;
            padding: 0px;
            background: #005825;
        }

        #header {
            width: 998px;
            height: 108px;
            margin: 0px auto;
            position: relative;
            padding: 0px;

        }


        #main {
            background-color: #FFFFFF;
            background-size: cover;
            overflow: hidden;
            padding: 0px 0px 5px 0px;
            background-image:url(mainbk.jpg);
            /* background-attachment: fixed; */
        }

        #mainbody {
            width: 998px;
            height:994px;
            margin: 0px auto;
            padding: 100px;

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
            clear:both;
        }

        #bg1{
            position:relative;
            top:225px;
            left:250px;
            height:200px;
            width:200px;
            background-image:url(10.png);
            background-size: cover;  /* 图片平铺拉伸，适应屏幕 */
            border-top-left-radius:6px;
            border-top-right-radius:6px;
        }
        #bg2{
            position:relative;
            top:25px;
            left:600px;
            height:200px;
            width:200px;
            background-image:url(11.png);
            background-size: cover;  /* 图片平铺拉伸，适应屏幕 */
            border-top-left-radius:6px;
            border-top-right-radius:6px;
        }
        #bg3{
            position:relative;
            top:-175px;
            left:950px;
            height:200px;
            width:200px;
            background-image:url(12.png);
            background-size: cover;  /* 图片平铺拉伸，适应屏幕 */
            border-top-left-radius:6px;
            border-top-right-radius:6px;
        }
        #item1{
            position:relative;
            top:-175px;
            left:250px;
            height:30px;
            width:200px;
            text-align: center;
            background:rgba(255,255,255,1);
            border-bottom-right-radius:6px;
            border-bottom-left-radius:6px;
        }
        #item2{
            position:relative;
            top:-205px;
            left:600px;
            height:30px;
            width:200px;
            text-align: center;
            background:rgba(255,255,255,1);
            border-bottom-right-radius:6px;
            border-bottom-left-radius:6px;
        }
        #item3{
            position:relative;
            top:-235px;
            left:950px;
            height:30px;
            width:200px;
            text-align: center;
            background:rgba(255,255,255,1);
            border-bottom-right-radius:6px;
            border-bottom-left-radius:6px;
        }

        a:link {
            color:#00868B;
            text-decoration: none;
        }      /* 未访问链接*/
        a:visited {
            color:#00868B;
            text-decoration: none;
        }
        a:hover {
            color:#FF6A6A;
            text-align:center;
            text-decoration: none;
        }
        a:active {
            color:#FF6A6A;
            text-decoration: none;
        }   text-align:center;
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

    <div id="mainbody">

        <div id="bg1"></div>
        <div id="bg2"></div>
        <div id="bg3"></div>
        <div id="item1"><a href="auditServlet">审核请假申请</a></div>
        <div id="item2"><a href="adminSearchServlet">查看所有请假信息</a></div>
        <div id="item3"><a href="savesuccess.jsp">生成请假信息统计表</a></div>
    </div>

</div>
<!--mainbody end-->


</div>
<!--main end-->


<div id="footer">
    <div class="bottomlogo">
        <img src="logo-bottom.jpg"></div>
    <div class="bottomcontact_cn">通讯地址:广州市新港西路135号     邮编:510275<br>
        电话: 020-84112828</div>
    <div class="bottomcontact_en">
        Address: No. 135, Xingang Xi Road, Guangzhou, 510275, P. R. China<br>
        TEL: +86-20-84112828
    </div>
    <div class="clear"></div>
    <div class="copyright">中山大学版权所有 COPYRIGHT©1999-2013 , SUN YAT-SEN UNIVERSITY - <a href="#">联系我们</a> - <a href="#">网站地图</a> - <a href="#">粤ICP备05008892号</a></div>
</div>
<!--footer end-->

</body>

<!-- <body>
	<div id="bg1"></div>
	<div id="bg2"></div>
	<div id="bg3"></div>
	<div id="item1"><a href="auditServlet">审核申请信息</a></div>
	<div id="item2"><a href="adminSearchServlet">查看所有部门加班结果</a></div>
	<div id="item3"><a href="savesuccess.jsp">生成加班信息统计表</a></div>
</body>
</html> -->