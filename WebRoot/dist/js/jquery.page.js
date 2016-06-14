/*********************************************************
                    基于Jquery1.11.3版本
*********************************************************/

(function($) {	
	
	$.fn.page = function(options) {
	    /*---------------------------
             设置默认属性
        ----------------------------*/
        var defaults = {  
	    	loading: '.ajax_loading',//载入动画
			del: '.delete',//删除按钮 
			firstPage: '#first',//第一页 
			lastPage: '#last',//最后一页 
			prevPage: '#previous',//上一页 
			nextPage: '#next',//下一页 
			setPageSize: '.set_page_size',//设置页行数
			pageSize: '#page_size',//每页显示行数
			pageNo: '#page_index',//页码	
			pageRow: '#pageRow',//数据行
            tableName: '#tb',//表格id			
            queryUrl: '',//ajax查询操作链接地址
            delUrl: ''//ajax删除操作链接地址
    	}; 
		
		//继承默认属性
        var options = $.extend({}, defaults, options); 
        
        jQuery.global={
        		
       	    pageFlag:function(firstPageFlag,lastPageFlag){
       	    	if(firstPageFlag==true){
       				$(options.prevPage).css('display','none');
       				$(options.firstPage).css('display','none');
       			}
       			else{
       				$(options.prevPage).css('display','');
       				$(options.firstPage).css('display','');
       			}
       			if(lastPageFlag==true){
        			$(options.lastPage).css('display','none');
        			$(options.nextPage).css('display','none');
       			}
       			else{
       				$(options.lastPage).css('display','');
       				$(options.nextPage).css('display','');
       			}
       	    }
       	}
	
        return this.each(function() {
        	//加载时执行
        	$(function(){
        		$(options.loading).show();
				pageSize=parseInt($(options.pageSize).val());
				pageNo=parseInt(1);
				$(options.pageNo).val(1);
				$('td',$('tr:eq(1)')).html('');
				blank_tr=$('tr:eq(1)',$(options.tableName));
				for(j=1;j<pageSize;j++){
					$('tr:eq(1)',$(options.tableName)).parent().append(blank_tr.clone());
				}
				$.ajax({
					type:'post', 
					url:options.queryUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&goLastPage=0',
					async:true,
					dataType:'JSON',
					success: function (data) {
						//alert('data:'+data);
						//JSONdata=$.parseJSON(data);
		       	        //pageMinRow1=parseInt(data[0].pageMinRow);
		        		//alert('pageMinRow2:'+pageMinRow1);
						$(options.tableName+' td').html('');
						jQuery.json.getMSG(data);
						if(pageMinRow!=0){
							//jQuery.json.getJSON(data);
							//alert('begin getContent...');
							jQuery.json.getContent(data);
							//alert('after getContent...');
							if(pageMinRow!=pageMaxRow){
								$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
							}
							else{
								$(options.pageRow).text(pageMaxRow);
							}
						}
						jQuery.global.pageFlag(firstPageFlag,lastPageFlag);
						$(options.loading).hide();
					},
					error: function () {
						alert("获取Json数据失败");
					}
				});
        	});
			
			/****删除信息按钮****/
			$('body').on('click',options.del,function(){	
				pageSize=parseInt($(options.pageSize).val());
				tr=$(this).parent().parent();
				name=tr.children('.name').text();
				result=confirm('是否要删除用户('+name+')?');
				if(result==true){
					$(options.loading).show();
					pageNo=parseInt($(options.pageNo).val());
					id=tr.children('.id').text();
					$.ajax({
						type:'post', 
						url:options.delUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&id='+id,
						dataType:'json',
						success: function (data) {
							$(options.tableName+' td').html('');
							jQuery.json.getMSG(data);
							if(pageMinRow!=0){
								jQuery.json.getContent(data);
								jQuery.global.pageFlag(firstPageFlag,lastPageFlag);
								if(pageMinRow!=pageMaxRow){
									$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
								}
								else{
									$(options.pageRow).text(pageMaxRow);
								}
							}
							else{
								alert("当前页无数据,即将自动跳转到最后一页");
								$(options.lastPage).click();
							}
							$(options.loading).hide();
						},
						error: function () {
							alert("获取Json数据失败");
						}
					}); 
					return;			
				}
				else{            
					result=null;
				}	    
			});
			
			/****第一页****/
			$('body').on('click',options.firstPage,function(){
				$(options.loading).show();
				pageSize=parseInt($(options.pageSize).val());
				pageNo=parseInt(1);
				$(options.pageNo).val(1);
				$.ajax({
					type:'post', 
					url:options.queryUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&goLastPage=0',
					dataType:'json',
					success: function (data) {
						$(options.tableName+' td').html('');
						jQuery.json.getMSG(data);
						jQuery.json.getContent(data);
						jQuery.global.pageFlag(firstPageFlag,lastPageFlag);
						if(pageMinRow!=pageMaxRow){
							$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
						}
						else{
							$(options.pageRow).text(pageMaxRow);
						}	
						$(options.loading).hide();
					},
					error: function () {
						alert("获取Json数据失败");
					}
				});
			});
			
			/****最后一页****/
			$('body').on('click',options.lastPage,function(){
				$(options.loading).show();
				pageSize=parseInt($(options.pageSize).val());
				pageNo=parseInt($(options.pageNo).val());
				pageNo=pageNo+1;
				$.ajax({
					type:'post', 
					url:options.queryUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&goLastPage=1',
					dataType:'json',
					success: function (data) {
						$(options.tableName+' td').html('');
						jQuery.json.getMSG(data);
						jQuery.json.getContent(data);
						jQuery.global.pageFlag(firstPageFlag,lastPageFlag);
						$(options.pageNo).val(parseInt(lastPageNo));
						if(pageMinRow!=pageMaxRow){
							$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
						}
						else{
							$(options.pageRow).text(pageMaxRow);
						}	
						$(options.loading).hide();
					},
					error: function () {
						$(options.tableName+' td').html('');
						alert("当前页无数据");
						$(options.pageRow).text('');
						$(options.loading).hide();
					}
				});
			});
     	    
     	    
			/****下一页按钮****/
			$('body').on('click',options.nextPage,function(){
				$(options.loading).show();
				pageSize=parseInt($(options.pageSize).val());	
				pageNo=parseInt($(options.pageNo).val());
				pageNo=pageNo+1;
				$(options.pageNo).val(pageNo);
				$.ajax({
					async:true,
					type:'post', 
					url:options.queryUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&goLastPage=0',
					dataType:'json',
					success: function (data) {
						$(options.tableName+' td').html('');
						jQuery.json.getMSG(data);						
						if(pageMinRow!=0){
							jQuery.json.getContent(data);
							jQuery.global.pageFlag(firstPageFlag,lastPageFlag);
							if(pageMinRow!=pageMaxRow){
								$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
							}
							else{
								$(options.pageRow).text(pageMaxRow);
							}
						}
						else{
							alert("当前页无数据,即将自动跳转到最后一页");
							$(options.lastPage).click();
						}
						$(options.loading).hide();
					},
					error: function () {
						alert("获取Json数据失败");
					}
				});
			});
     	    
     	    
			/****上一页按钮****/
			$('body').on('click',options.prevPage,function(){
				$(options.loading).show();
				pageSize=parseInt($(options.pageSize).val());		
				pageNo=parseInt($(options.pageNo).val());
				pageNo=pageNo-1;
				$(options.pageNo).val(pageNo);
				$.ajax({
					type:'post', 
					url:options.queryUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&goLastPage=0',
					dataType:'json',
					success: function (data) {
						$(options.tableName+' td').html('');
						jQuery.json.getMSG(data);
						jQuery.json.getContent(data);
						jQuery.global.pageFlag(firstPageFlag,lastPageFlag); 
						if(pageMinRow!=pageMaxRow){
							$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
						}
						else{
							$(options.pageRow).text(pageMaxRow);
						}	
						$(options.loading).hide();
					},
					error: function () {
						alert("获取Json数据失败");
					}
				});
			});
			
			//更改每页显示行数
			$('body').on('click',options.setPageSize,function(){
				pageSize=parseInt($(this).text());
				$(options.setPageSize).css({'background-color':'white','color':'#7a7a7a'});
				$(this).css({'background-color':'#7a7a7a','color':'white'});
				$(options.pageSize).attr('value',pageSize);
				pageNo=parseInt(1);
				$(options.pageNo).val(1);
				linenum=($(options.tableName+' tr').length-1);
				for(i=1;i<linenum;i++){
					$('tr:eq(1)',$(options.tableName)).remove();
				}
				$('td',$('tr:eq(1)')).html('');
				blank_tr=$('tr:eq(1)',$(options.tableName));
				for(j=1;j<pageSize;j++){
					$('tr:eq(1)',$(options.tableName)).parent().append(blank_tr.clone());
				}
				$.ajax({
					type:'post', 
					url:options.queryUrl+'?pageSize='+pageSize+'&pageNo='+pageNo+'&goLastPage=0',
					dataType:'json',
					success: function (data) {
						$(options.tableName+' td').html('');
						jQuery.json.getMSG(data);
						if(pageMinRow!=0){
							//jQuery.json.getJSON(data);
							jQuery.json.getContent(data);
							if(pageMinRow!=pageMaxRow){
								$(options.pageRow).text(pageMinRow+'-'+pageMaxRow);
							}
							else{
								$(options.pageRow).text(pageMaxRow);
							}
						}
						jQuery.global.pageFlag(firstPageFlag,lastPageFlag);
						$(options.loading).hide();
						$('.title a').click();
					},
					error: function () {
						alert("获取Json数据失败");
					}
				});
			});
		
		});
	}
})(jQuery);