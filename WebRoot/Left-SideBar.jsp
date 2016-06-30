<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <script src="https://code.jquery.com/jquery-2.0.0.js"></script> 
  </head>
  
  <body>
    <script src="js/auto_menu.js"></script>  
    <script>
        $(function(){
        	var json="[{\"menu\":{\"name\":\"基础设置\",\"code\":\"BASIC_SET\",\"icon\":\"fa fa-cog\",\"menu\":[{\"name\":\"用户设置\",\"code\":\"USER_SET\",\"icon\":\"fa fa-user\",\"menu\":\"null\",\"func\":[{\"name\":\"用户信息\",\"href\":\"yellow.html\"},{\"name\":\"用户管理\",\"href\":\"#\"}]},{\"name\":\"菜单设置\",\"code\":\"MENU_SET\",\"icon\":\"fa fa-tasks\",\"menu\":\"null\",\"func\":[{\"name\":\"菜单信息\",\"href\":\"#\"},{\"name\":\"菜单管理\",\"href\":\"#\"},{\"name\":\"菜单组\",\"href\":\"#\"}]},{\"name\":\"职责设置\",\"code\":\"RESP_SET\",\"icon\":\"fa fa-user-plus\",\"menu\":\"null\",\"func\":[{\"name\":\"职责信息\",\"href\":\"red.html\"},{\"name\":\"职责管理\",\"href\":\"#\"}]}],\"func\":\"null\"}},{\"menu\":{\"name\":\"仓库库存\",\"code\":\"INV\",\"icon\":\"fa fa-truck\",\"menu\":[{\"name\":\"浮法库存\",\"code\":\"FF_INV\",\"icon\":\"fa fa-truck\",\"menu\":\"null\",\"func\":[{\"name\":\"库存查询\",\"href\":\"blue.html\"},{\"name\":\"库存管理\",\"href\":\"#\"}]},{\"name\":\"大板库存\",\"code\":\"JB_INV\",\"icon\":\"fa fa-truck\",\"menu\":\"null\",\"func\":[{\"name\":\"库存查询\",\"href\":\"#\"},{\"name\":\"库存管理\",\"href\":\"#\"}]}],\"func\":\"null\"}},{\"menu\":{\"name\":\"对账单\",\"code\":\"AP\",\"icon\":\"fa fa-jpy\",\"menu\":\"null\",\"func\":[{\"name\":\"浮法对账单\",\"href\":\"#\"},{\"name\":\"浮法对账单(非客户用)\",\"href\":\"#\"},{\"name\":\"大板对账单\",\"href\":\"#\"},{\"name\":\"大板对账单(非客户用)\",\"href\":\"#\"}]}},{\"menu\":{\"name\":\"预采购\",\"code\":\"PO\",\"icon\":\"fa fa-file-text-o\",\"menu\":\"null\",\"func\":[{\"name\":\"预采购订单\",\"href\":\"green.html\"},{\"name\":\"预采购订单（查询）\",\"href\":\"#\"}]}},{\"menu\":{\"name\":\"一级菜单\",\"code\":\"MENU1\",\"icon\":\"fa fa-file-text-o\",\"menu\":[{\"name\":\"二级菜单\",\"code\":\"MENU2\",\"icon\":\"fa fa-file-text-o\",\"menu\":[{\"name\":\"三级菜单\",\"code\":\"MENU3\",\"icon\":\"fa fa-file-text-o\",\"menu\":[{\"name\":\"四级菜单\",\"code\":\"MENU4\",\"icon\":\"fa fa-file-text-o\",\"menu\":[],\"func\":[{\"name\":\" 四级功能\",\"href\":\"green.html\"}]}],\"func\":[{\"name\":\" 三级功能\",\"href\":\"green.html\"}]}],\"func\":[{\"name\":\" 二级功能\",\"href\":\"green.html\"}]}],\"func\":[{\"name\":\"一级功能\",\"href\":\"green.html\"}]}}]";
      		var menujson = eval('('+json+')');
      	    $().menu(menujson);   
      	    
      	    $('a[data-href]').on('click', function(e) {
				e.preventDefault();//阻止<a>标签默认的点击事件（超链接跳转）
				value=$(this).data().href;				
				level=$(this).data().level;
				$('section.content-header h1').text($(this).text());
				$('ol.breadcrumb li').remove();
				$('ol.breadcrumb').append('<li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> 主页</a></li>');
				if(level==1){
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').children('a').children('span').html()+'</li>');
				}
				else if(level==2){
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').parents('.treeview').children('a').children('span').html()+'</li>');
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').children('a').children('span').html()+'</li>');
				}	
				else if(level==3){
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').parents('.treeview').parents('.treeview').children('a').children('span').html()+'</li>');
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').parents('.treeview').children('a').children('span').html()+'</li>');
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').children('a').children('span').html()+'</li>');
				}	
				else if(level==4){
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').parents('.treeview').parents('.treeview').parents('.treeview').children('a').children('span').html()+'</li>');
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').parents('.treeview').parents('.treeview').children('a').children('span').html()+'</li>');
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').parents('.treeview').children('a').children('span').html()+'</li>');
				    $('ol.breadcrumb').append('<li>'+$(this).parents('.treeview').children('a').children('span').html()+'</li>');
				}	
				console.log($(this).parents('.treeview').children('a').children('span').html());
				$("#mainframe").attr("src",value);
			});      		
      	});
    </script>

    <aside class="main-sidebar" >
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">       
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">      
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
  </body>
</html>
