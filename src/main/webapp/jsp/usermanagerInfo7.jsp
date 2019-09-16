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
$(function(){
	$("#image1").click(function(){
		var data=new FormData($("#form1")[0]);
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/items/daochu3",
			data:data,
			dataType:"json",
			processData: false,
			contentType: false,
			success:function(data){	
				if(data){
				alert("导出成功");
				window.location.href="${pageContext.request.contextPath }/items/mohu3/1/3";
			    }else{			    	
				alert("导出失败");
			    }
			},error:function(){
				alert("导出失败");
			}
		});
		
	});
})

</script>
</head>

<body>
<form id="form1" class="form-inline" name="form" role="form" action="${pageContext.request.contextPath }/items/mohu3/1/3">
  
   <div class="form-group">
    <label for="time5" class="col-sm-4 control-label">开始时间</label>
    <div class="col-sm-4">
      <input type="date" name="time5" class="form-control" id="time5">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="time6" class="col-sm-4 control-label">结束时间</label>
    <div class="col-sm-4">
      <input type="date" name="time6" class="form-control" id="time6">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>

    
    </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">提交</button>
    </div>
  </div>
  <div class="form-group">
     <a href="${pageContext.request.contextPath }/jsp/line3.jsp" class="btn btn-primary btn-lg">统计图</a>
   </div>
   <input type="button" class="btn btn-primary btn-lg" id="image1" value="导出数据">
</form>
<table  class="table table-striped table-bordered table-hover" id="tb">
    <tr>
      <th>机构名称</th>
      <th>计划召开桌数</th>
      <th>实际召开桌数</th>
      <th>执行率</th>
      <th>新客户</th>
      <th>旧客户</th>
      <th>意向客户</th>
      <th>预估保费</th>
    </tr>
    <c:forEach items="${plistt.list }" var="bb">
    <tr>
    <td>${bb.areaName }</td>
    <td>${bb.numActivities }</td>
    <td>${bb.numActual }</td>
    <td>${bb.zxl }</td>
    <td>${bb.newClient }</td>
    <td>${bb.oldClient }</td>
    <td>${bb.yxClient }</td>
    <td>${bb.money }</td>
    </tr>
    </c:forEach>
</table>
<ul class="pagination">
<c:if test="${plistt.hasPreviousPage }">
<li><a href="${pageContext.request.contextPath }/items/mohu3/${plistt.pageNum-1 }/${plistt.pageSize}?time5=${time5}&time6=${time6}">上一页</a></li>
</c:if>
<c:forEach items="${ plistt.navigatepageNums}" var="i"> 
<li><a href="${pageContext.request.contextPath }/items/mohu3/${i }/${plistt.pageSize}?time5=${time5}&time6=${time6}">${i }</a></li>
</c:forEach>
<c:if test="${plistt.hasNextPage }">
<li><a href="${pageContext.request.contextPath }/items/mohu3/${plistt.pageNum+1 }/${plistt.pageSize}?time5=${time5}&time6=${time6}">下一页</a></li>
</c:if> 
</ul>

</body>
</html>