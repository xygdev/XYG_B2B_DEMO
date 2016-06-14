/*********************************************************
                    基于Jquery1.11.3版本
                        Bootstrap
                      Juery动态菜单功能
                      creat by brid
*********************************************************/

	/*******************************************************
							修改日志
				2016.06.06 创建js文件,初始程序逻辑运行成功
				2016.06.07 根据BootstrapUI,修改程序内容
	*******************************************************/
	$.fn.menu=function(menujson){					
		menunum1=menujson.length;
  		for(a=0;a<menunum1;a++){ 
  		    $('ul.sidebar-menu').append("<li class=\"treeview "+menujson[a].menu.code+"\"><a href=\"#\"><i class=\""+menujson[a].menu.icon+"\"></i><span>"+menujson[a].menu.name+"</span><i class=\"fa fa-angle-left pull-right\"></i></a><ul class=\"treeview-menu\"></ul></li>");
  		    if(menujson[a].menu.func[0].name!=null){
  		    	funcnum1=menujson[a].menu.func.length;
  		    	for(b=0;b<funcnum1;b++){
  		    		$('.'+menujson[a].menu.code+' ul:first').append("<li><a href=\"#\" data-href=\""+menujson[a].menu.func[b].href+"\" data-level=\"1\"><i class=\"fa fa-circle-o\"></i>"+menujson[a].menu.func[b].name+"</a></li>");
  		    	}
  		    }
  		    if(menujson[a].menu.menu[0].name!=null){ 		    	
  		        menunum2=menujson[a].menu.menu.length;
  		        for(c=0;c<menunum2;c++){ 
  		            $('.'+menujson[a].menu.code+' ul:first').append("<li class=\"treeview "+menujson[a].menu.menu[c].code+"\"><a href=\"#\"><i class=\""+menujson[a].menu.menu[c].icon+"\"></i><span>"+menujson[a].menu.menu[c].name+"</span><i class=\"fa fa-angle-left pull-right\"></i></a><ul class=\"treeview-menu\"></ul></li>");
  		            if(menujson[a].menu.menu[c].func[0].name!=null){
  		            	funcnum2=menujson[a].menu.menu[c].func.length;
  		            	for(d=0;d<funcnum2;d++){
  		       			 	$('.'+menujson[a].menu.menu[c].code+' ul:first').append("<li><a href=\"#\" data-href=\""+menujson[a].menu.menu[c].func[d].href+"\" data-level=\"2\"><i class=\"fa fa-circle-o\"></i>"+menujson[a].menu.menu[c].func[d].name+"</a></li>");
  		            	}
  		            }
  		    		if(menujson[a].menu.menu[c].menu[0].name!=null){    			
  		    		    menunum3=menujson[a].menu.menu[c].menu.length;
  		    		    for(e=0;e<menunum3;e++){ 
  		    				$('.'+menujson[a].menu.menu[c].code+' ul:first').append("<li class=\"treeview "+menujson[a].menu.menu[c].menu[e].code+"\"><a href=\"#\"><i class=\""+menujson[a].menu.menu[c].menu[e].icon+"\"></i><span>"+menujson[a].menu.menu[c].menu[e].name+"</span><i class=\"fa fa-angle-left pull-right\"></i></a><ul class=\"treeview-menu\"></ul></li>");
  		    				if(menujson[a].menu.menu[c].menu[e].func[0].name!=null){
  		    					funcnum3=menujson[a].menu.menu[c].menu[e].func.length;
  		    					for(f=0;f<funcnum3;f++){
  		       			 			$('.'+menujson[a].menu.menu[c].menu[e].code+' ul:first').append("<li><a href=\"#\" data-href=\""+menujson[a].menu.menu[c].menu[e].func[f].href+"\" data-level=\"3\"><i class=\"fa fa-circle-o\"></i>"+menujson[a].menu.menu[c].menu[e].func[f].name+"</a></li>");
  		    					}
  		    				}
  		    				if(menujson[a].menu.menu[c].menu[e].menu[0].name!=null){
  		    					menunum4=menujson[a].menu.menu[c].menu[e].menu.length;
  		    		    		for(g=0;g<menunum4;g++){
  		    		    			$('.'+menujson[a].menu.menu[c].menu[e].code+' ul:first').append("<li class=\"treeview "+menujson[a].menu.menu[c].menu[e].menu[g].code+"\"><a href=\"#\"><i class=\""+menujson[a].menu.menu[c].menu[e].menu[g].icon+"\"></i><span>"+menujson[a].menu.menu[c].menu[e].menu[g].name+"</span><i class=\"fa fa-angle-left pull-right\"></i></a><ul class=\"treeview-menu\"></ul></li>");
  		    		    		    funcnum4=menujson[a].menu.menu[c].menu[e].menu[g].func.length;
  		    		    			for(h=0;h<funcnum4;h++){
  		       			 				$('.'+menujson[a].menu.menu[c].menu[e].menu[g].code+' ul:first').append("<li><a href=\"#\" data-href=\""+menujson[a].menu.menu[c].menu[e].menu[g].func[h].href+"\" data-level=\"4\"><i class=\"fa fa-circle-o\"></i>"+menujson[a].menu.menu[c].menu[e].menu[g].func[h].name+"</a></li>");
  		    						}
  		    		    		} 		    				
  		    				}
  		    			}
  		    		}
  		        }
  		    }
  		}
	}
