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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("form").submit(function(){
			//计划名称
			var activitiesname=$("#activitiesname");
			if(!activitiesname.val()){
				isError(activitiesname,"计划名称不能为空");
				return false;
			}
			isOk(activitiesname,"计划名称输入正确");
			var numActivities=$("#numActivities");
			if(isNaN(numActivities.val())||!numActivities.val()){
				isError(numActivities,"只能为数字且不能为空");
				return false;
			}
			isOk(numActivities,"格式正确");
			
			var startTime=$("#startTime")
			if(!startTime.val()){
				isError(startTime,"活动开始时间不能为空");
				return false;
			}
			isOk(startTime,"活动开始时间输入正确")
			
			var endTime=$("#endTime")
			if(!endTime.val()){
				isError(endTime,"活动结束时间不能为空");
				return false;
			}
			isOk(endTime,"活动结束时间输入正确")
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
<form class="form-horizontal" name="form" role="form" action="${pageContext.request.contextPath }/plan/add">
  
  <div class="form-group">
    <label for="activitiesname" class="col-sm-2 control-label">计划名称</label>
    <div class="col-sm-4">
      <input type="text" name="activitiesname" class="form-control" id="activitiesname" placeholder="请输入计划名称">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="numActivities" class="col-sm-2 control-label">计划召开桌数</label>
    <div class="col-sm-4">
      <input type="text" name="numActivities" class="form-control" id="numActivities" placeholder="请输入召开桌数">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="startTime" class="col-sm-2 control-label">开始时间</label>
    <div class="col-sm-4">
      <input type="date" name="startTime" class="form-control" id="startTime" placeholder="请输入开始时间">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="endTime" class="col-sm-2 control-label">结束时间</label>
    <div class="col-sm-4">
      <input type="date" name="endTime" class="form-control" id="endTime" placeholder="请输入结束时间">
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