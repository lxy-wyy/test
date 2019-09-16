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
	 <div id="container" style="height:100%"></div>
</body>

<script type="text/javascript">

$(function(){
	$.ajax({
		url:"${pageContext.request.contextPath }/items/getsheng",
		type:"post",
		data:{},
		dataType:"json",
		success:function(data){
			if(data){
				var arr1=new Array();
				var arr2=new Array();
				for(var i=0;i<data.length;i++){
					arr1.push(data[i].areaName);
					arr2.push({value:data[i].money,name:data[i].areaName});
				}
				var dom = document.getElementById("container");
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
				        data:arr1
				    },
				    series : [
				        {
				            name: '访问来源',
				            type: 'pie',
				            radius : '55%',
				            center: ['50%', '60%'],
				            data:arr2,
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