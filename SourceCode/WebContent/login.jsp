<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据科学与计算机学院请假系统</title>
    <script src="js/menu.js"></script>
    <style>
        body {
            font-family: Arial,sans-serif;
            color: #000000;
            font-size: 12px;
            margin: 0px;
            padding: 0px;
            background: #005825; 
        }

        p {
            margin: 0px;
            padding: 0px;
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
		 
		 	h1{
		margin:50px auto;
		left:200px;  
        color:#FFFFFF; 
        font-size:400%;
        text-align:center;
	}
			h3{
				margin:0px auto;
				left:220px;  
		        color:#FFFFFF; 
		        text-align:center;
				font-size:200%;
				color:white;
			}
			form{
				width:300px;
				height:220px;
				margin: 80px auto;
			}
			.item{
				margin: 0px auto;
				position:relative;
				left:10px;
				width:40px;
				display:inline-block;
				text-align:left;
				color:white;
			}
			.item1{
				margin:15px auto;
				position:relative;
				left:10px;
				color:white;
				width:100px;
				display:inline-block; 
				text-align:center;
			}
			.item2{
				margin: 0px auto;
				position:relative;
				left:0px;
				width:150px;
				display:inline-block;
				text-align:left;
				color:white;
				background:rgba(0,0,0,0);
				border:none;
				font-size:105%;  
			}
			.item3{
				margin:15px auto;
				position:relative;
				left:1000px;
				color:white;
				width:400px;
				display:inline-block; 
				text-align:center;
				font-style:italic;
				font-size:120%
			}
		 
		 	#bg1{
		   	position:relative;
		   	top:0px;
		   	left:-40px;
		   	height:400px;
		  	width:400px;
		  	background:rgba(0,0,0,0.2);
		  	border-radius:10px;  
		   }
		   
		   #bg2{
		   	position:relative;
		   	top:0px;
		   	left:80px;
		   	height:30px;
		  	width:250px;
		  	background:rgba(255,255,255,0);
		  	border:1px solid #97FFFF;
		  	border-radius:7px;
		   }
		  
			
		   #bg4{
		   	position:relative;
		   	top:0px;
		   	left:80px;
		   	height:30px;
		  	width:250px;
		  	background:rgba(151,255,255,1);
		  	border:0px solid #97FFFF;
		  	border-radius:7px;
		  	color:#696969;
		  	font: italic 1.5em Georgia, serif;
		   }





.sideright{
	width: 480px;
	height: 450px;
	margin:0 auto;
	
}
.sideright .index{
	width: 330px;
	height: 350px;
	background-color: rgba(0,0,0,0.5);  /* rgba(255,255,255,0.75); */
	margin: 50px 90px;
}
.headline{
	font-size: 22px;
	text-align: center;
	padding: 20px;
	color:#62a8ea;
	text-align: center;
}

input[type="password"],
input[type="text"],
input[type="submit"]{
	-web-kit-appearance:none;
  	-moz-appearance: none;
  	display: block;
  	margin: 0 auto;
  	font-size:15px;
  	width: 240px;
}
input[type="password"],
input[type="text"]{
	height:35px;
	border-radius:3px;
	border:1px solid #c8cccf;
	color:#6a6f77;
	outline:0;
}
input[type="submit"]{
	margin-top: 25px;
	height: 35px;
	background: #357eb8;
	color: #bcedff;
	font-weight: bold;
	font-size: 16px;
	border-radius:6px; 
}

/*    		position:relative;
   		top:0px;
   		left:-10px;
   		height:30px;
  		width:80px;
  		background:rgba(255,255,255,0);
  		border:1px solid #FFFFFF;
  		color:white; 
  		border-radius:6px; 
  		font-size:100%; */
  		
input[type="submit"]:hover{
	background: #0e62a3;
	cursor: pointer;
}
.astyle{
	margin: 5px 0 5px 27px;
	font-size:17px; 
	color: #62a8ea;
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

			<div class="sideright">	
				<div class="index">
					<form action="loginServlet" method="post">
						<p class="headline">用户登陆</p>
						<p class="astyle">用户名：</p> 
						<input type="text"  name="wname" placeholder="请输入用户名">
						<p class="astyle">密码：</p>
						<input type="password"  name="password" placeholder="请输入密码">
						<input type="submit" value="登陆" name="login" >
						<br>
					</form>

                    <a href="register.jsp">点我注册</a></div>
				</div>
			</div>
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
</html>