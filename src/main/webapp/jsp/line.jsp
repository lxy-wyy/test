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
	 <div id="container" style="height:100%;width:50%;float:left;"></div>
	 <div id="container2" style="height:100%;width:50%;float:right;"></div>
</body>
<script type="text/javascript">
$(function(){
	$.ajax({
		url:"${pageContext.request.contextPath }/items/getxian",
		type:"post",
		data:{},
		dataType:"json",
		success:function(data){
			if(data){
				var arr1=new Array();
				var arr2=new Array();
				$(data).each(function(a,b){
					arr1[a]=b.activitiesname;
					arr2[a]=b.money;
				})
            var dom = document.getElementById("container");
            var myChart = echarts.init(dom);
				option = {
				xAxis: {
					type: 'category',
					name:'活动名称',
					data: arr1
				},
				yAxis: {
					type: 'value',
					name:'元',
					min:0,
					max:3000
				},
				series: [{
					data: arr2,
					type: 'line'
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
<script type="text/javascript">

$(function(){
	$.ajax({
		url:"${pageContext.request.contextPath }/items/getxian2",
		type:"post",
		data:{},
		dataType:"json",
		success:function(data){
			if(data){
				var arr3=new Array();
				var arr4=new Array();
				for(var i=0;i<data.length;i++){
					arr3.push(data[i].activitiesname);
					arr4.push({value:data[i].money,name:data[i].activitiesname});
				}
				var dom = document.getElementById("container2");
				var myChart = echarts.init(dom);
				option = {
				    title : {
				        text: '',
				        subtext: '',
				        x:'center'
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: "{a} <br/>{b} : {c} ({d}%)"
				    },
				    legend: {
				        orient: 'vertical',
				        left: 'left',
				        data:arr3
				    },
				    series : [
				        {
				            name: '访问来源',
				            type: 'pie',
				            radius : '55%',
				            center: ['50%', '60%'],
				            data:arr4,
				            itemStyle: {
				                emphasis: {
				                    shadowBlur: 10,
				                    shadowOffsetX: 0,
				                    shadowColor: 'rgba(0, 0, 0, 0.5)'
				                }
				            }
				        }
				    ]
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