<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    request.setAttribute("context", request.getContextPath());
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>请假信息填写</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <style type="text/css">


        h1{
            margin:50px;
            text-align: center;
        }


        #table_wrapper{
            margin:100px auto;
            position:relative;
            top:-10px;
            left:-10px;
            width:400px;
            height:400px;
            background:rgba(0,134,139,0.8);
            border-radius:15px;
        }

        .optionWrapper{
            position:relative;
            top:0px;
            left:80px;
            height:20px;
            width:250px;
            background:rgba(255,255,255,0);
            border:1px solid #FFFFFF;
            border-radius:7px;
            vertical-align: center;
        }

        .labelItem{
            margin: 0px auto;
            position:relative;
            left:10px;
            width:80px;
            display:inline-block;
            text-align:left;
            color:white;
        }

        .selectItem{
            margin: 0px auto;
            position:relative;
            left:0px;
            width:160px;
            display:inline-block;
            text-align:left;
            color:white;
            background:rgba(0,0,0,0);
            border:none;
            font-size:100%;
        }
        a:link {
            color: #00868B;
            text-decoration: none;
        }      /* 未访问链接*/
        a:visited {
            color: #00868B;
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
            text-align:center;
        }
        #btn1{
            position:relative;
            top:0px;
            left:-10px;
            height:30px;
            width:80px;
            background:rgba(255,255,255,0);
            border:1px solid #FFFFFF;
            color:white;
            border-radius:6px;
            font-size:100%;
        }
        #btn2{
            position:relative;
            top:0px;
            left:30px;
            height:30px;
            width:80px;
            background:rgba(255,255,255,0);
            border:1px solid #FFFFFF;
            color:white;
            border-radius:6px;
            font-size:100%;
        }


        #main {
            background-color: #FFFFFF;
            background-size: cover;
            overflow: hidden;
            padding: 0px 0px 5px 0px;
            background-image: url(img/beach.jpg);
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
            left: 30%;
        }

        #item2 {
            left: 60%;
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
            left: 30%;
            background-image: url(img/16.png);

        }

        #bg2 {
            left: 60%;
            background-image: url(img/17.png);

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

        .name{
            font-weight: bold;
            font-size: 40px;
            left : 300px;
            bottom: 20px;
            position: absolute;
            text_align:center;
            color:white;
            font-family: "Kaiti SC",'Charm', cursive;

        }

        .circleImg{
            margin:0px auto;
            border-radius: 30px;
            width:60px;
            height:60px;
            left : 1000px;
            bottom: 20px;
            position: absolute;
        }

        .close{
            left:1074px;
            top: 55px;
            position: absolute;
        }
        #myName{
            position: absolute;
            left:1074px;
            top: 36px;
            font-size: 20px;
            color: white;
        }



        .fa {
            color: white;
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
            left: -20px;
        }

        .clear {
            clear: both;
        }
    </style>
</head>


<body>


<div id="header">
    <div id="logo">
        <img src="img/logo.jpg" alt="中山大学">
    </div>

    <div class="name">
        <span >数据科学与计算机学院请假系统</span>
    </div>
    <%
        String head=(String) session.getAttribute("photo");
    %>

    <img class="circleImg" src="<%=head %>"  />
    <div id="myName"><%=session.getAttribute("my_name")%></div>
    <a class="close" href="login.jsp" >
        <i class="fa fa-sign-out fa-3x" aria-hidden="false"></i>
    </a>

</div>


<div id="main">

    <div id="wrapper">
        <div id="bg1" class="bg"></div>
        <div id="bg2" class='bg'></div>
        <div id="item1" class="item"><a href="${context}/apply.jsp">申请请假</a></div>
        <div id="item2" class="item"><a href="SearchServlet">申请结果</a></div>
    </div>

    <form id="table_wrapper" action="ApplyingServlet" method="post">
        <br>
        <br>
        <br>
        <div class="optionWrapper">
            <span class="labelItem">请假类型:</span>
            <span>
		<select class="selectItem" name="type" class="select1">
		<option value="1">因公请假</option>
		<option value="2">因私请假</option>
            <option value="3">其它</option>
		</select>
		</span>
        </div>
        <br>
        <div class="optionWrapper">
            <span class="labelItem">起始日期:</span><span><input class="selectItem" type="date" name="date" value="2019-07-01"/></span>
        </div><br>
        <div class="optionWrapper">
            <span class="labelItem">结束日期:</span><span><input class="selectItem" type="date" name="end_date" value="2019-08-01"/></span>
        </div><br>
        <div class="optionWrapper">
            <span class="labelItem">开始时间:</span><span><input class="selectItem" type="time" name="timeb" value="08:00"/></span>
        </div><br>
        <div class="optionWrapper">
            <span class="labelItem">结束时间:</span><span><input class="selectItem" type="time" name="timee" value="21:00" /></span>
        </div><br>
        <div class="optionWrapper">
            <span class="labelItem">请假理由:</span><span><input class="selectItem" type="text" name="reason" value="" /></span>
        </div><br>

        <br/><br/>


        <center>
            <input id="btn1" type="submit" value="提交" />
            <input id="btn2" type="reset" value="重置" />
        </center>
    </form>
</div>


<div id="footer">
    <div class="bottomlogo">
        <img src="img/logo-bottom.jpg"></div>
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
</html>