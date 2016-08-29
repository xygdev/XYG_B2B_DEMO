/*********************************************************
                    基于Jquery1.11.3版本
                        Bootstrap
                      Juery动态菜单功能
                      creat by bird
*********************************************************/

	/*******************************************************
							修改日志
				2016.06.06 创建js文件,初始程序逻辑运行成功
				2016.06.07 根据BootstrapUI,修改程序内容
				2016.08.09 为功能新增icon设置功能
				2016.08.10 整个动态功能逻辑推倒重构，更改了JSON数据的格式，
				           参考后台数据的关系逻辑，使用了类似于一维数组的JSON格式，
				           用prev(menu)的方式，让父菜单与子菜单之间产生关联，
				           使用循环遍历的方式，动态生成菜单。
				           （之前的方法，存在过多Hard Code，且JSON格式
				           多层嵌套，过于复杂繁琐，不利于后端构造，且扩展性较差）
	*******************************************************/

	$.fn.menu=function(data){
		for(i=0;i<data.length;i++){
			if(data[i].prev==null||data[i].prev==''){
				$('ul.sidebar-menu').append("<li class=\"treeview "+data[i].code+"\"><a href=\"#\"><i class=\""+data[i].icon+"\"></i><span>"+data[i].name+"</span><i class=\"fa fa-angle-left pull-right\"></i></a><ul class=\"treeview-menu\"></ul></li>");
			}else{
				if((data[i].name!=null||data[i].name!='')&&(data[i].func==null||data[i].func=='')){
					$('.'+data[i].prev+' ul:first').append("<li class=\"treeview "+data[i].code+"\"><a href=\"#\"><i class=\""+data[i].icon+"\"></i><span>"+data[i].name+"</span><i class=\"fa fa-angle-left pull-right\"></i></a><ul class=\"treeview-menu\"></ul></li>");
				}else if((data[i].name==null||data[i].name=='')&&(data[i].func!=null||data[i].func!='')){
					$('.'+data[i].prev+' ul:first').append("<li><a href=\"#\" data-href=\""+data[i].href+"\"><i class=\""+data[i].icon+"\"></i>"+data[i].func+"</a></li>");
				}else{
					alert("Error");
				}
			}		
		}
	}
	
