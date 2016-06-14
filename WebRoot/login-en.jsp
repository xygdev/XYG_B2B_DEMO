<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>Xinyi Glass</title>    
    <!-- 图标cdn引入 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!-- 核心布局 CSS文件 -->
	<link rel="stylesheet" href="css/login.css">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	
  </head>
  
  <body>
    <!-- 欢迎页区域 start -->
    <div id="welcome-page" style="opacity:1">
      <div class="reveal-modal-bg"></div>
      <!-- 右上角区域 start -->
      <div class="dropdown langue-frame">
   		<button type="button" class="btn dropdown-toggle langue-btn" id="dropdownMenu1" data-toggle="dropdown">
          Langue<span class="caret"></span>
   		</button>
   		<ul class="dropdown-menu" role="menu" style="min-width:100px" aria-labelledby="dropdownMenu1">
      	  <li role="presentation">
            <a role="menuitem" tabindex="-1" href="login-ch.jsp">Chinese</a>
          </li>
          <li role="presentation">
            <a role="menuitem" tabindex="-1" href="login-en.jsp">English</a>
          </li>
        </ul>
      </div>
      <!-- 右上角区域 end -->
      <!-- 左上角区域 start -->
      <div class="logo-frame">
        <img src="img/login_page/xyg.png" class="logo-img">
        <h1 class="logo-desc">XYG</h1>
      </div>
      <!-- 左上角区域 end -->
      <!-- 正中间区域 start -->
      <div class="center-text">
        <h1 class="welcome-text">Welcome to Xinyi Glass Business-to-Business Platform</h1> 
        <button type="button" class="btn start-btn">Start Now</button>   
      </div>
      <!-- 正中间区域 end -->  
      <!-- 背景图轮播区域 start -->
      <div id="myCarousel" class="carousel slide">   	  
   	    <div class="carousel-inner">
      	  <div class="item active bg-img bg1">
      	    <div class="img-desc">
      	      <h1>Tokyo Sky Tree</h1>
      	      <h3>The Double-Sliver Low-E exterior glass is provided by Xinyi Glass</h3>
      	    </div>
      	  </div>
      	  <div class="item bg-img bg2">
      	    <div class="img-desc">
      	      <h1>The Venetian Macao-Resort-Hotel</h1>
      	      <h3>The Double-Sliver Low-E exterior glass is provided by Xinyi Glass</h3>
      	    </div>
      	  </div>
      	  <div class="item bg-img bg3">
      	    <div class="img-desc">
      	      <h1>KingKey Financial Center</h1>
      	      <h3>The Double-Sliver Low-E exterior glass is provided by Xinyi Glass</h3>
      	    </div>
      	  </div>
      	  <div class="item bg-img bg4">
      	    <div class="img-desc">
      	      <h1>Peking Digital Building</h1>
      	      <h3>The Double-Sliver Low-E exterior glass is provided by Xinyi Glass</h3>
      	    </div>
      	  </div>
   	    </div>
	  </div> 
	  <!-- 背景图轮播区域 end -->
	</div>
	<!-- 欢迎页区域 end -->
	
	<!-- 登录页区域 start -->
	<div id='login-page'>
	  <!-- 右上角区域 start -->
	  <button type='button' class="go-back">
	    <i class="fa fa-reply fa-2x" aria-hidden="true"></i>	    
	  </button>
	  <!-- 右上角区域 end -->
	  <!-- 正中间区域 start -->
	  <div class="login-frame">
	    <img src="img/login_page/xyg.gif" style="width:100%">
	    <form role="form">
   		  <div class="form-group" style="padding:0 25px">
     	    <label for="name">User</label>
      	    <input type="text" class="form-control" id="name" name="user" placeholder="Fill In Your Username">
   		  </div>
   		  <div class="form-group" style="padding:0 25px">
     	    <label for="name">Password</label>
      	    <input type="password" class="form-control" id="password" name="password" placeholder="Fill In Your Password">
   		  </div>
   		  <button type="submit" class="btn btn-defult login-btn">Login</button>
	    </form>
	    <hr></hr>
	    <p class="split-line">Forgot Your Password?</p>
	    <button type="button" class="btn etc-btn" style="background-color:#2C4477 !important">
	      <i style="font-size:1.5em !important" class="fa fa-volume-control-phone"></i>
	      <span style="font-size:0.8em">CONTACT US</span>      
	    </button>
	    <button type="button" class="btn etc-btn" style="margin:15px 0;background-color:#BB3C31 !important">
	      <i style="font-size:1.5em !important" class="fa fa-envelope fa-2x"></i>
	      <span style="font-size:0.8em">FIND BY MAIL</span>      
	    </button>	    
	  </div>
	  <!-- 正中间区域 end -->
	</div>
	<!-- 登录页区域 end -->
	
  <script>
  	$('#myCarousel').carousel({
  		interval: 5000
	});	 
	
	$('.start-btn').on('click',function(){
	    $("#welcome-page").animate({"opacity":0});
	    $("#welcome-page").css("display","none");
	    $("#login-page").animate({"opacity":1});
	});
	
	$('.go-back').on('click',function(){	    
	    $("#welcome-page").css("display","");
	    $("#login-page").animate({"opacity":0});
	    $("#welcome-page").animate({"opacity":1});
	});
  </script>
  </body>
</html>
