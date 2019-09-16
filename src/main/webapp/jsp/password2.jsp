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
</head>
<body>
<form class="form-horizontal" name="form" role="form" action="${pageContext.request.contextPath }/user/update">
   <div class="form-group">
    <label for="password" class="col-sm-2 control-label">请输入密码</label>
    <div class="col-sm-4">
      <input type="text" name="password" class="form-control" id="password" placeholder="">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>    
    </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">修改</button>
    </div>
  </div>
</form>
</body>
</html>