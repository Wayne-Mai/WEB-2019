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
<title>加班信息填写</title>
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
		margin:50px;
		text-align: center;
	}
	
	
	#bg1{
		margin:0px auto;
		position:relative;
		top:-10px;
		left:-10px;
		width:1600px;
		height:50px;
		background:rgba(0,134,139,0.5);
	}
	
	#bg2{
		margin:100px auto;
		position:relative;
		top:-10px;
		left:-10px;
		width:400px;
		height:400px;
		background:rgba(0,134,139,0.8);
		border-radius:15px;
	}
	
	#bg3{
   	position:relative;
   	top:0px;
   	left:80px;
   	height:30px;
  	width:250px;
  	background:rgba(255,255,255,0);
  	border:1px solid #FFFFFF;
  	border-radius:7px;
   }
	
	.item{
		margin: 0px auto;
		position:relative;
		left:10px;
		width:80px;
		display:inline-block;
		text-align:left;
		color:white;
	}
	
	.item1{
		margin:15px auto;
		color:red;
		width:100px;
		display:inline-block; 
		text-align:center;
	}
	.item3{
		margin:15px auto;
		position:relative;
		left:1150px;
		color:white;
		width:100px;
		display:inline-block; 
		text-align:center;
		font-style:italic;
		font-size:120%
	}
	
	.item2{
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
    	color:white;
    	text-decoration: none;
    }      /* 未访问链接*/  
    a:visited {
    	color:white;
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
        	<div id="bg1">
	<span class="item1"><a href="${context}/apply.jsp">申请加班</a></span>
	<span class="item1"><a href="SearchServlet">申请结果</a></span>
	<span class="item3">Welcome!</span>
	</div>
	
     </div>


    <div id="main">
    
       <div id="mainbody">
			<form id="bg2" action="ApplyingServlet" method="post">
				<br></br>	
				<div id="bg3">
					<span class="item">加班类型:</span>
					<span>
					<select class="item2" name="type" class="select1">
					<option value="1">工作日加班</option>
					<option value="2">周末加班</option>
					<option value="3">节假日加班</option>
					</select>
					</span>
					</div>
					<br></br>
					<div id="bg3">
					<span class="item">加班日期:</span><span><input class="item2" type="date" name="date" value="2017-08-19"/></span>
					</div><br></br>
					<div id="bg3">
					<span class="item">开始时间:</span><span><input class="item2" type="time" name="timeb" value="15:00"/></span>
					</div><br></br>
					<div id="bg3">
					<span class="item">结束时间:</span><span><input class="item2" type="time" name="timee" value="16:00" /></span>
					</div>
					<br/><br/>
			
					<center>
						<input id="btn1" type="submit" value="提交" />
						<input id="btn2" type="reset" value="重置" />
					</center>
				</form>

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
<%-- 
<body>
	<div id="bg1">
	<span class="item1"><a href="${context}/apply.jsp">申请加班</a></span>
	<span class="item1"><a href="SearchServlet">申请结果</a></span>
	<span class="item3">Welcome!</span>
	</div>
	<form id="bg2" action="ApplyingServlet" method="post">
	<br></br>	
	<div id="bg3">
		<span class="item">加班类型:</span>
		<span>
		<select class="item2" name="type" class="select1">
		<option value="1">工作日加班</option>
		<option value="2">周末加班</option>
		<option value="3">节假日加班</option>
		</select>
		</span>
		</div>
		<br></br>
		<div id="bg3">
		<span class="item">加班日期:</span><span><input class="item2" type="date" name="date" value="2017-08-19"/></span>
		</div><br></br>
		<div id="bg3">
		<span class="item">开始时间:</span><span><input class="item2" type="time" name="timeb" value="15:00"/></span>
		</div><br></br>
		<div id="bg3">
		<span class="item">结束时间:</span><span><input class="item2" type="time" name="timee" value="16:00" /></span>
		</div>
		<br/><br/>

		<center>
			<input id="btn1" type="submit" value="提交" />
			<input id="btn2" type="reset" value="重置" />
		</center>
	</form>
</body> --%>


</html>