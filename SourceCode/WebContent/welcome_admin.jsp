<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎进入员工加班管理系统</title>

<style type="text/css">
   body {
            font-family: Arial,sans-serif;
            color: #000000;
            font-size: 12px;
            margin: 0px;
            padding: 0px;
            background: #005825; 
        }
        

		h1{
		margin:50px auto;
		left:200px;  
        color:black; 
        font-size:300%;
        text-align:center;
	}
	
		        /* frame */
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
            background-image:url(login_bg.png);         
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
	<h1>登录成功，欢迎部门负责人<span><%=request.getAttribute("wname") %></span>来到员工加班管理系统！</h1>
	<center><p style="color:black">3秒钟后系统会自动跳转到审核员工加班信息页面...</p></center>
	<%response.setHeader("refresh","3;url=adminmenu.jsp"); %>
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

<%-- <body>
	<h1>登录成功，欢迎部门负责人<span><%=request.getAttribute("wname") %></span>来到员工加班管理系统！</h1>
	<center><p style="color:white">3秒钟后系统会自动跳转到审核员工加班信息页面...</p></center>
	<%response.setHeader("refresh","3;url=adminmenu.jsp"); %>
</body> --%>
</html>