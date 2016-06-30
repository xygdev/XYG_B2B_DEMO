<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>Homepage</title>
    <meta http-equiv="content-type" content="text/html;charset=gb2312">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">  
    
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="http://d3js.org/d3.v3.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <style>
      *{
        padding:0;
        margin:0;
      }
      body{
        background-color:transparent;
      }
      #container{
		    margin:0;
			padding:0;
			width:100%;
		    position:relative;
		    overflow:hidden; 		    
		}
		.gallery{
		    position:relative;
		    width:100%;
		    margin:0;
			padding:0
		}
		.gallery.area{
		    position:absolute;
			top:0;
			right:0;
			width:100%;
		}
		#img-area{    
			width:100%;
			height:100%;
			background-position:center center;
			background-repeat: no-repeat;
			background-size: cover;
			background-image: url(img/home_page/Malaysia.jpg);
		}
		.map{
		    position:relative;
		    float:left;
		    width:100%;
		    margin:0;
			padding:0;
		    /*border:10px solid #006600;*/
			/*border-radius:15px;*/
			box-sizing: border-box; 
			cursor:pointer
		}
	    .info{
	        position:absolute;
			top:0;
			right:0;
			width:60%;
	    }
		
	    
		.map h2{
		    position:absolute;
            margin:1% 1%;
		    display:block;
		    font-family:"MicrosoftYaHei";
			line-height:1;
			color:black;
			font-weight:500;
		}
		@media screen and (min-width:768px){
		    .map h2{
			    font-size:15px;
			}
		}
		@media screen and (min-width:992px){
		    .map h2{
			    font-size:20px;
			}
		}
		@media screen and (min-width:1200px){
		    .map h2{
			    font-size:25px;
			}
		}
    </style>
  </head>  
  <body>
    <div id="container">
      <div class="gallery">
        <div class="area">
          <div id="img-area"></div>
        </div>
      </div>
      <div class="map hidden-xs">
        <h2>信义玻璃营销网络</h2> 
        <div class="info">
          <div class="col-sm-4" style="padding:2.5% 5%">
            <h3>白玻</h3>
            <p>本产品具有表面光滑无波纹，透视性佳规格可做弹性配合，减少切片损失等特点。可提供2-22mm厚度范围及超长超大板玻璃。</p>
            <h3>F绿玻</h3>
            <p>本产品具有紫外线透过率低，遮阳效果好，增加建筑物外观色彩变化，创造更高价值感等特点。信义玻璃生产的薄板绿玻可常年保证供应，满足高档汽车玻璃加工需求。</p>
            <h3>欧洲灰玻</h3>
            <p>本产品具有紫外线透过率低，遮阳效果好，增加建筑物外观色彩变化，创造更高价值感等特点。</p>
          </div>
          <div class="col-sm-4" style="padding:0">
            <img src="img/home_page/CB1.jpg" style="width:100%">
            <img src="img/home_page/CB3.jpg" style="width:100%">
          </div>
          <div class="col-sm-4" style="padding:0">
            <img src="img/home_page/CB2.jpg" style="width:100%">
            <img src="img/home_page/CB4.jpg" style="width:100%">
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
    window.onload=function(){  	
    	//创建svg
    	var width = 0.6*document.body.clientWidth;
    	var	height = 0.5*width;
	
		$('.map').css("height",height+20+"px");	
		$('.area').css("height",height+"px");
	
		var body= d3.select("body");
		var container= d3.select("#container");
		var map=d3.select(".map");
		var img= d3.select('#img-area');
    	var svg = map
            .append("svg")
            .attr("width", width)
            .attr("height", height);

    	//创建投影(projection)
    	var projection = d3.geo.mercator().translate([width/3, height/2]).center([105, 38]).scale(0.6*width);
   		//创建path
    	var path = d3.geo.path().projection(projection);

    	//解析json
    	d3.json("china.geo.json", function(json) {

        	svg.selectAll("path")
                .data(json.features)
                .enter()
                .append("path")
                .attr("d", path)
				.attr("id",function(d,i){
				    return json.features[i].id
				})
                .on('mouseover', function(data) {
				    if(data.properties.xyg==true){				
						img.attr('style','background-image:url(img/home_page/'+data.properties.url+')');	
                        container.select(".map h2").text(data.properties.com);						
					}
                })
                .on('mouseout', function(data) {

                })
                .attr('fill', 'rgba(128,124,139,0.61)')
                .attr('stroke', 'rgba(255,255,255,1)')
                .attr('stroke-width', 1)
       	 	;
		
			svg.select('#guang_dong').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#liao_ning').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#si_chuan').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#an_hui').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#tian_jin').attr('fill', 'rgb(0,102,0)'); 		
    	});
    }
	
	window.onresize=function(){  
    	$('#container svg').remove();
    	//创建svg
    	var width = 0.6*document.body.clientWidth;
    	var	height = 0.5*width;
	
		$('.map').css("height",height+20+"px");	
		$('.area').css("height",height+"px");
	
		var body= d3.select("body");	
		var container= d3.select("#container");	
		var map= d3.select(".map");	
		var img= d3.select('#img-area');
    	var svg = map
            .append("svg")
            .attr("width", width)
            .attr("height", height);

    	//创建投影(projection)
    	var projection = d3.geo.mercator().translate([width/3, height/2]).center([105, 38]).scale(0.6*width);

    	//创建path
    	var path = d3.geo.path().projection(projection);

    	//解析json
    	d3.json("china.geo.json", function(json) {

        	svg.selectAll("path")
                .data(json.features)
                .enter()
                .append("path")
                .attr("d", path)
				.attr("id",function(d,i){
				    return json.features[i].id
				})
                .on('mouseover', function(data) {
				    if(data.properties.xyg==true){				
						img.attr('style','background-image:url(img/home_page/'+data.properties.url+')');	
                        container.select(".map h2").text(data.properties.com);						
					}
                })
                .on('mouseout', function(data) {

                })
                .attr('fill', 'rgba(128,124,139,0.61)')
                .attr('stroke', 'rgba(255,255,255,1)')
                .attr('stroke-width', 1)
        	;
		
			svg.select('#guang_dong').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#liao_ning').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#si_chuan').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#an_hui').attr('fill', 'rgb(0,102,0)'); 
			svg.select('#tian_jin').attr('fill', 'rgb(0,102,0)'); 		
   		});
	}
    </script>
  </body>
</html>
