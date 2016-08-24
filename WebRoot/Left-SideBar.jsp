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
      		var text="[{\"prev\":\"\",\"name\":\"基础设置\",\"code\":\"BASIC_SET\",\"icon\":\"fa fa-cog\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"BASIC_SET\",\"name\":\"用户设置\",\"code\":\"USER_SET\",\"icon\":\"fa fa-user\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"USER_SET\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-users\",\"func\":\"用户管理\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"BASIC_SET\",\"name\":\"职责设置\",\"code\":\"RESP_SET\",\"icon\":\"fa fa-user-plus\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"RESP_SET\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-meh-o\",\"func\":\"职责管理\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"BASIC_SET\",\"name\":\"菜单设置\",\"code\":\"MENU_SET\",\"icon\":\"fa fa-tasks\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"MENU_SET\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-info-circle\",\"func\":\"菜单管理\",\"href\":\"http://localhost:8080/web08Spring/emp/listEmpVO.do\"},{\"prev\":\"MENU_SET\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-server\",\"func\":\"子菜单管理\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"BASIC_SET\",\"name\":\"功能设置\",\"code\":\"FUNC_SET\",\"icon\":\"fa fa-plug\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"FUNC_SET\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-book\",\"func\":\"功能管理\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"BASIC_SET\",\"name\":\"权限设置\",\"code\":\"PERMISSION_SET\",\"icon\":\"fa fa-lock\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"PERMISSION_SET\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-unlock-alt\",\"func\":\"权限管理\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"\",\"name\":\"仓库库存\",\"code\":\"INV\",\"icon\":\"fa fa-truck\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"INV\",\"name\":\"浮法库存\",\"code\":\"FF_INV\",\"icon\":\"fa fa-cubes\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"INV\",\"name\":\"大板库存\",\"code\":\"JB_INV\",\"icon\":\"fa fa-cubes\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"FF_INV\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-cube\",\"func\":\"库存查询\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"JB_INV\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-cube\",\"func\":\"库存查询\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"\",\"name\":\"对账单\",\"code\":\"AP\",\"icon\":\"fa fa-bar-chart\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"AP\",\"name\":\"浮法对账单\",\"code\":\"FF_AP\",\"icon\":\"fa fa-money\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"AP\",\"name\":\"大板对账单\",\"code\":\"JB_AP\",\"icon\":\"fa fa-money\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"FF_AP\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-jpy\",\"func\":\"对账单查询\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"JB_AP\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-jpy\",\"func\":\"对账单查询\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"\",\"name\":\"预采购订单\",\"code\":\"PO\",\"icon\":\"fa fa-shopping-cart\",\"func\":\"\",\"href\":\"\"},{\"prev\":\"PO\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-shopping-bag\",\"func\":\"订单管理\",\"href\":\"http://www.baidu.com\"},{\"prev\":\"PO\",\"name\":\"\",\"code\":\"\",\"icon\":\"fa fa-search\",\"func\":\"订单查询\",\"href\":\"http://www.baidu.com\"}]";
      		var json = eval('('+text+')');
      	    $().menu(json);   
      	    
      	    //动态生成面包屑
      	    $('a[data-href]').on('click', function(e) {
      	    	e.preventDefault();//阻止<a>标签默认的点击事件（超链接跳转）
      	    	value=$(this).data().href;	
      	    	$("#mainframe").attr("src",value);
      	    	$('section.content-header h1').text($(this).text());
				$('ol.breadcrumb li').remove();
				$('ol.breadcrumb').append('<li><a href=\"index.jsp\"><i class=\"fa fa-dashboard\"></i> 主页</a></li>');
				var json=$(this).parentsUntil('ul.sidebar-menu').children('a').children('span');
				for(i=0;i<json.length;i++){
				    $('ol.breadcrumb').append('<li>'+json[i].innerText+'</li>');
				    //alert(json[i].innerText);
				}	
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
