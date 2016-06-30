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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
   

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
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs">Alexander Pierce</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header green">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
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
        <section class="content" style="padding-left:0;padding-right:0;padding-bottom:0">
          <!-- Info boxes -->
        <iframe frameborder="0" src="Home.jsp" id="mainframe" scrolling="no" style="width:100%" ></iframe>
       
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      
    
    
    </div>
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="plugins/chartjs/Chart.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard2.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <script src="js/auto_menu.js"></script>  
    <script type="text/javascript">
    	//注意：下面的代码是放在和iframe同一个页面调用,放在iframe下面
    	$("#mainframe").load(function () {
    		//alert($(this).contents().find("body").height());clientHeight
       	 	//var mainheight = $(this).contents().find("body").height();
       	 	var mainwidth=$(this).contents().find("#container").width(); 
       	 	var bodyID=$(this).contents().find("body").attr("id");
       	 	if(bodyID=="homepage"){
       	 	  if(mainwidth>=992){
       	 	    var mainheight = 5490;
       	 	  }
       	 	  else{
                var mainheight = 3850;
       	 	  }     	 	
       	 	}
       	 	else{
       	 	  var mainheight = $(this).contents().find("#container").height(); 
       	 	}      	 	
        	$(this).height(mainheight);
    	});
    	window.onresize=function(){    	    
    		$('#mainframe').attr('src', $('#mainframe').attr('src'));
    	}
		</script>
  </body>
</html>
