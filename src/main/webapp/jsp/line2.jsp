<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/common/jquery-3.2.1.min.js"></script>
</head>
<body style="height: 100%; margin: 0">
	 <div id="container" style="height: 100%"></div>
</body>
<script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
$(function(){
	$.ajax({
		url:"${pageContext.request.contextPath }/items/getshi",
		type:"post",
		data:{},
		dataType:"json",
		success:function(data){
			if(data){
				var arr1=new Array();
				var arr2=new Array();
				$(data).each(function(a,b){
					arr1[a]=b.deptName;//[210,10]
					arr2[a]=b.money;
				})

				option = {
				    xAxis: {
				    	type: 'category',
						name:'县名',
						data: arr1
				    },
				    yAxis: {
				    	type: 'value',
						name:'保费',
						min:0,
						max:10000
				    },
				    series: [{
				    	data: arr2,
						type: 'bar'
				    }]
				};
				
			}
			

			if (option && typeof option === "object") {
			myChart.setOption(option, true);
			}
		}
	});
	
});
</script>
</html>