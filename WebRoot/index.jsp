<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>信义玻璃B2B平台</title>
	<meta http-equiv="content-type" content="text/html;charset=gb2312">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="bootstrap/css/AdminLTE.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="bootstrap/css/skins/_all-skins.min.css"> 
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .sidebar-toggle:hover{
            background-color:#006633 !important;
        }
        .dark-green{
            background-color:#006633 !important;
        }
        .green{
            background-color:#009933 !important;
        }
        .sidebar-menu >li:hover>a,
        .sidebar-menu >li.active>a{
            border-left-color:#006633 !important;
        }
    </style>
  </head>
  
  <body class="hold-transition skin-blue sidebar-mini sidebar-collapse" >  
    <div class="wrapper">    
       <header class="main-header">
        <!-- Logo -->
        <a href="index.jsp" class="logo dark-green">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>X</b>YG</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Xinyi</b>GLASS</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top green" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav"> 
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <!-- start message -->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="img/login_page/user2-160x160.jpg" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i>16/08/29 10:51</small>
                          </h4>
                          <p>From:<span>Bird</span></p>
                        </a>
                      </li>
                      <!-- end message -->    
                    </ul>            
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>           
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="img/login_page/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs">Alexander Pierce</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header green">
                    <img src="img/login_page/user2-160x160.jpg" class="img-circle" alt="User Image">
                    <p>
                      Alexander Pierce - Web Developer
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>             
            </ul>
          </div>
        </nav>
      </header>
      
      <jsp:include page="Left-SideBar.jsp"/>
      
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1 id="test">
           	 信义玻璃B2B电子商务平台
            <small>Version 1.0</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content" style="padding:0">
          <!-- Info boxes -->
          <iframe frameborder="0" src="Home.jsp" id="mainframe" scrolling="yes" framespacing="0"  style="width:100%;padding:0" ></iframe>
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->     
    </div>
    <!-- jQuery 2.1.4 -->
    <script src="plugin/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="bootstrap/js/app.min.js"></script>
    <script src="plugin/js/auto_menu.js"></script>  
    <script type="text/javascript">
    	width=$(window).width();
        height=$(window).height();
        if(width>=768){
            headerheight=$('section.content-header').innerHeight();
            ifmheight=height-headerheight-55;
            $('#mainframe').css('height',ifmheight+'px');
        }else{
            logoheight=$('a.logo').height();
            headerheight=$('section.content-header').innerHeight();
            ifmheight=height-logoheight-headerheight-55;
            $('#mainframe').css('height',ifmheight+'px');
        }
    	
    	var isResizing = false;
    	window.onresize=function(){ 
    		if (!isResizing) { 
    			console.log('do resizing now!'); 
    			width=$(window).width();
            	height=$(window).height();
            	if(width>=768){
            		headerheight=$('section.content-header').innerHeight();
            		ifmheight=height-headerheight-55;

            		$('#mainframe').css('height',ifmheight+'px');
            	}else{
            		console.log('debug2');
                	logoheight=$('a.logo').height();
            		headerheight=$('section.content-header').innerHeight();
            		ifmheight=height-logoheight-headerheight-55;
            		$('#mainframe').css('height',ifmheight+'px');
           		}
    			setTimeout(function () { 
    				isResizing = false; 
    			}, 1000); 
    		} 
    		isResizing = true; 
    	}; 
	</script>
  </body>
</html>
