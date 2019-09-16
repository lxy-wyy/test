<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		$("form").submit(function(){
			//计划名称
			var activitiesname=$("#activitiesname");
			if(!activitiesname.val()){
				isError(activitiesname,"活动名称不能为空");
				return false;
			}
			isOk(activitiesname,"活动名称输入正确");
			
			var numActual=$("#numActual");
			if(isNaN(numActual.val())||!numActual.val()){
				isError(numActual,"只能为数字且不能为空");
				return false;
			}
			isOk(numActual,"格式正确");
		    
			var newClient=$("#newClient");
			if(isNaN(newClient.val())||!newClient.val()){
				isError(newClient,"只能为数字且不能为空");
				return false;
			}
			isOk(newClient,"格式正确");
			
			var oldClient=$("#oldClient");
			if(isNaN(oldClient.val())||!oldClient.val()){
				isError(oldClient,"只能为数字且不能为空");
				return false;
			}
			isOk(oldClient,"格式正确");
			
			var yxClient=$("#yxClient");
			if(!yxClient.val()){
				isError(yxClient,"客户意向不能为空");
				return false;
			}
			isOk(yxClient,"客户意向输入正确");
			
			var money=$("#money");
			if(isNaN(money.val())||!money.val()){
				isError(money,"只能为数字且不能为空");
				return false;
			}
			isOk(money,"格式正确");
			
			var createtime=$("#createtime")
			if(!createtime.val()){
				isError(createtime,"活动时间不能为空");
				return false;
			}
			isOk(createtime,"活动时间输入正确")
		});
	})
	//成功校验
	function isOk(obj,text){
		obj.parent().parent().removeClass("has-error");
		obj.parent().parent().addClass("has-success");
		obj.parent().next().children(":first").html(text);
	}
	//失败校验
	function isError(obj,text){
		obj.parent().parent().removeClass("has-success");
		obj.parent().parent().addClass("has-error");
		obj.parent().next().children(":first").html(text);
	}
</script>
</head>
<body>
<br><br>
<form class="form-horizontal" name="form" role="form" action="${pageContext.request.contextPath }/items/add">
  
  <div class="form-group">
    <label for="activitiesname" class="col-sm-2 control-label">活动名称</label>
    <div class="col-sm-4">
      <input type="text" value="${allid.activitiesname }" name="activitiesname" class="form-control" id="activitiesname" placeholder="请输入计划名称">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
   </div>
   <div class="form-group">
    <label for="numActual" class="col-sm-2 control-label">实际召开桌数</label>
    <div class="col-sm-4">
      <input type="text" name="numActual" class="form-control" id="numActual" placeholder="请输入实际召开桌数">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="newClient" class="col-sm-2 control-label">新客户</label>
    <div class="col-sm-4">
      <input type="text" name="newClient" class="form-control" id="newClient" placeholder="请输入新客户">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
     <div class="form-group">
    <label for="oldClient" class="col-sm-2 control-label">老客户</label>
    <div class="col-sm-4">
      <input type="text" name="oldClient" class="form-control" id="oldClient" placeholder="请输入老客户">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
     <div class="form-group">
    <label for="yxClient" class="col-sm-2 control-label">客户意向</label>
    <div class="col-sm-4">
     <input type="text" name="yxClient" class="form-control" id="yxClient" placeholder="请输入客户意向">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
     <div class="form-group">
    <label for="money" class="col-sm-2 control-label">保费</label>
    <div class="col-sm-4">
<input type="text" name="money" class="form-control" id="money" placeholder="请输入保费">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
     <div class="form-group">
    <label for="createtime" class="col-sm-2 control-label">活动时间</label>
    <div class="col-sm-4">
      <input type="date" name="createtime" class="form-control" id="createtime" placeholder="请输入活动时间">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加</button>
    </div>
  </div>
  
</form>
</body>
</html>