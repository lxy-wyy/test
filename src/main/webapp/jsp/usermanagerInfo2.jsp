<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/static/common/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
function updatebyid(id){
	$.ajax({
		type:'post',
	    url:'${pageContext.request.contextPath}/plan/allid2',
	    data:{id:id},
	    dataType:'json',
	    success:function(data){
	      	$("#id").val(data.id);
        	$("#activitiesname").val(data.activitiesname);
        	$("#numActivities").val(data.numActivities);
        	var start=new Date(data.startTime);       	
        	var starttime=date(start); 
        	$("#startTime").val(starttime);
        	var end=new Date(data.endTime);
        	var endtime=date(end); 
        	$("#endTime").val(endtime);
	    }
	})
}
function date(dd){
	var month=fix(dd.getMonth()+1,2);
	var year=dd.getFullYear();
	var hours=fix(dd.getHours(),2);
	var minutes=fix(dd.getMinutes(),2);
	var dates=fix(dd.getDate(),2);
	var d1=year+"-"+month+"-"+dates+"T"+hours+":"+minutes;
	return d1;
}

function fix(num,length){
	return (''+num).length < length ? ((new Array(length+1)).join('0')+num).slice(-length):''+num;
}
</script>
<script type="text/javascript">
$(function(){
	$("#but").click(function(){
		var data=new FormData($("#form2")[0]);
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/plan/fasong",
			data:data,
			dataType:"json",
			processData: false,
			contentType: false,
			success:function(data){	
				alert("发送成功");
				window.location.href="${pageContext.request.contextPath }/plan/allavailable?pn=1";			  
			},error:function(){
				alert("上传失败");
			}
		});
		
	});
})

</script>
</head>
<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<form id="form1" class="form-horizontal" name="form" role="form" action="${pageContext.request.contextPath }/plan/update3">
  <input type="hidden" name="id" class="form-control" id="id" >
  <div class="form-group">
    <label for="activitiesname" class="col-sm-2 control-label">计划名称</label>
    <div class="col-sm-4">
      <input type="text" name="activitiesname" class="form-control" id="activitiesname">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="numActivities" class="col-sm-2 control-label">计划召开桌数</label>
    <div class="col-sm-4">
      <input type="text" name="numActivities" class="form-control" id="numActivities">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="startTime" class="col-sm-2 control-label">开始时间</label>
    <div class="col-sm-4">
      <input type="text" name="startTime" class="form-control" id="startTime">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="endTime" class="col-sm-2 control-label">结束时间</label>
    <div class="col-sm-4">
      <input type="text" name="endTime" class="form-control" id="endTime">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default" onclick="login()">修改</button>
    </div>
  </div>
</form>
</div>

<div class="modal fade" id="aaaa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<form id="form2" class="form-horizontal">
  
  <div class="form-group">
    <label for="subject" class="col-sm-2 control-label">标题</label>
    <div class="col-sm-4">
      <input type="text" name="subject" class="form-control" id="subject">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="message" class="col-sm-2 control-label">内容</label>
    <div class="col-sm-4">
      <input type="text" name="message" class="form-control" id="message">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button id="but" type="button" class="btn btn-default">发送</button>
    </div>
  </div>
</form>
</div>
<table  class="table table-striped table-bordered table-hover" id="tb">
    <tr>
      <th>计划名称</th>
      <th>计划桌数</th>
      <th>开始时间</th>
      <th>结束时间</th>
      <th>录入时间</th>
      <th>操作</th>
    </tr>
    <c:forEach items="${plist.list }" var="plan">
    <tr>
    <td>${plan.activitiesname }</td>
    <td>${plan.numActivities }</td>
    <td><fmt:formatDate value="${plan.startTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
    <td><fmt:formatDate value="${plan.endTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
    <td>${plan.timestamp }</td>
    <td><button class="btn btn-primary btn-lg <c:if test="${plan.available==2 }">disabled</c:if>" data-toggle="modal" data-target="#myModal" onclick="javascript:updatebyid(${plan.id})">修改</button>
    <button class="btn btn-primary btn-lg <c:if test="${plan.available==3 }">disabled</c:if>" data-toggle="modal" data-target="#aaaa" onclick="javascript:updatebyid(${plan.id})">发送邮件</button>
    <a class="btn btn-primary btn-lg <c:if test="${plan.available==3 }">disabled</c:if>" href="${pageContext.request.contextPath }/plan/allid?id=${plan.id }" class="btn btn-default">上报实际数据</a></td>
    </tr>
</c:forEach>
</table>

<ul class="pagination">
<c:if test="${plist.hasPreviousPage }">
<li><a href="${pageContext.request.contextPath }/plan/allavailable?pn=${plist.pageNum-1 }">上一页</a></li>
</c:if>
<c:forEach items="${ plist.navigatepageNums}" var="i"> 
<li><a href="${pageContext.request.contextPath }/plan/allavailable?pn=${i }">${i }</a></li>
</c:forEach>
<c:if test="${plist.hasNextPage }">
<li><a href="${pageContext.request.contextPath }/plan/allavailable?pn=${plist.pageNum+1 }">下一页</a></li>
</c:if> 
</ul>
</body>
</html>