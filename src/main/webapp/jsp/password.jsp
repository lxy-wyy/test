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
	$("#image1").click(function(){
		var code=$("#code").val();
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/user/yanzheng",
			data:{code:code},
			dataType:"json",
			success:function(data){	
				    if(data){
					window.location.href="${pageContext.request.contextPath }/jsp/password2.jsp"
				    }else{			    	
				    	alert("验证码不正确");
				    }							  
			},error:function(){
				alert("验证码不正确");
			}
		});
		
	});
})
	
</script>
<script type="text/javascript">
$(function(){
   $("#image2").click(function(){
		var phone=$("#phone").val();
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath }/user/fasong",
			data:{phone:phone},
			dataType:"json",
			success:function(data){	
				alert("已发送请注意查看");
			},error:function(){
				alert("发送失败");
			}
		});
		
	});
})
	
</script>
</head>
<body>
<form class="form-horizontal" name="form" role="form" action="">
  
  <div class="form-group">
    <label for="phone" class="col-sm-2 control-label">手机号</label>
    <div class="col-sm-4">
      <input type="text" name="phone" class="form-control" id="phone" placeholder="">
      <button type="button" id="image2" class="btn btn-default">获取验证码</button>
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="code" class="col-sm-2 control-label">验证码</label>
    <div class="col-sm-4">
      <input  type="text" name="code" class="form-control" id="code" placeholder="">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>

    
    </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" id="image1" class="btn btn-default">下一步</button>
    </div>
  </div>
</form>
</body>
</html>