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
	$("#but").click(function(){
		var data=new FormData($("#form2")[0]);
		var a=$("#deptId").val();
		alert(a);
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/plan/fasong1",
			data:data,
			dataType:"json",
			processData: false,
			contentType: false,
			success:function(data){	
				alert("发送成功");
				window.location.href="${pageContext.request.contextPath }/plan/allareaid?pn=1";			  
			},error:function(){
				alert("上传失败");
			}
		});
		
	});
})

</script>
</head>
<body>

<table  class="table table-striped table-bordered table-hover" id="tb">
    <tr>
      <th>计划名称</th>
      <th>计划桌数</th>
      <th>开始时间</th>
      <th>结束时间</th>
      <th>录入时间</th>
      <th>审核状态</th>
      <th>审核</th>
      <th>操作</th>
    </tr>
    <c:forEach items="${plistt.list }" var="aa">
    <tr>
    <td>${aa.activitiesname }</td>
    <td>${aa.numActivities }</td>
    <td><fmt:formatDate value="${aa.startTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
    <td><fmt:formatDate value="${aa.endTime }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
    <td>${aa.timestamp }</td>
    <td>
			<span>
			<c:if test="${aa.available==1 }">未审核</c:if>
			<c:if test="${aa.available==2 }">已审核</c:if>
			<c:if test="${aa.available==3 }">审核未通过</c:if>
			</span>
    </td>
    <td><a href="${pageContext.request.contextPath }/plan/update1?id=${aa.id}" class="btn btn-primary btn-lg <c:if test="${aa.available==2 }">disabled</c:if>">通过</a><a href="${pageContext.request.contextPath }/plan/update2?id=${aa.id}" class="btn btn-primary btn-lg <c:if test="${aa.available!=1 }">disabled</c:if>">不通过</a></td>
    <td><a href="${pageContext.request.contextPath }/plan/del?id=${aa.id}" class="btn btn-primary btn-lg">删除</a>
     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#aaaa" onclick="javascript:updatebyid()">发送邮件</button>
    </td>
    </tr>
     <div class="modal fade" id="aaaa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<form id="form2" class="form-horizontal">
  <input type="hidden" name="deptId" class="form-control" id="deptId" value="${aa.deptId }">
  <div class="form-group">
    <label for="subject" class="col-sm-2 control-label">标题</label>
    <div class="col-sm-4">
      <input type="text" name="subject" class="form-control" id="subject">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
  <br>
  <br>

   <div class="form-group">
    <label for="message" class="col-sm-2 control-label">内容</label>
    <div class="col-sm-4">
      <input type="text" name="message" class="form-control" id="message">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
    <br>  <br>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button id="but" type="button" class="btn btn-default">发送</button>
    </div>
  </div>
</form>
</div>   
</c:forEach>
</table>

<ul class="pagination">
<c:if test="${plistt.hasPreviousPage }">
<li><a href="${pageContext.request.contextPath }/plan/allareaid?pn=${plistt.pageNum-1 }">上一页</a></li>
</c:if>
<c:forEach items="${ plistt.navigatepageNums}" var="i"> 
<li><a href="${pageContext.request.contextPath }/plan/allareaid?pn=${i }">${i }</a></li>
</c:forEach>
<c:if test="${plistt.hasNextPage }">
<li><a href="${pageContext.request.contextPath }/plan/allareaid?pn=${plistt.pageNum+1 }">下一页</a></li>
</c:if> 
</ul>

</body>
</html>