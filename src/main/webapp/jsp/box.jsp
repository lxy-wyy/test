<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/ztree/css/demo.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css">
    <script type="text/javascript">
		var setting = {		
			callback: {
				onClick:zTreeOnCheck
			}, 
			
		    async: {
		    	enable:true,
		        url:"${pageContext.request.contextPath }/user/getall",
		        autoParam:["id","username","pId"]
		    },
		    
		    view: {
		      showIcon: true,
			  showLine: true
			},
			data: {
				simpleData: {
					enable: true,
					idKey: "id",
					pIdKey: "pId",
					rootPId: 0
				}          
			}
		};
		
		$(function(){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath }/user/all",
				data:{},
				dataType:"json",
				success:function(data){		
					zNodes=data;
				    $.fn.zTree.init($("#treeDemo"), setting, data);
				}
			})
		});
		function zTreeOnCheck(event,treeId,treeNode){
			var username=treeNode.name;
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath }/user/getid",
				data:{username:username},
				dataType:"json",
				success:function(data){		
					if(data){
						 var table=$("#tb");
							$("#tb  tr:not(:first)").empty("");
					/* 	var tb = document.getElementById("tb");
					        var row = tb.insertRow(tb.rows.length);
					        var c1 = row.insertCell(0);
					        c1.innerHTML = data.id;
					        var c2 = row.insertCell(1);
					        c2.innerHTML = data.username;
					        var c3 = row.insertCell(2);
					        c3.innerHTML = data.usercode;
					        var c4 = row.insertCell(3);
					        c4.innerHTML = data.level;  
					         */
						
						table.append("<tr>"+"<td>"+data.id+"</td>"+"<td>"+data.username+"</td>"+"<td>"+data.usercode+"</td>"
								+"<td>"+data.level+"</td>"+"<td>"+"<a href=${pageContext.request.contextPath }/user/del?username="+data.username+">删除</a>"+"</td>"
								+"<td>"+"<a href=javascript:aaa()>修改</a>"+"</td>"+"</tr>"); 
					/* $("#id").val(data.id);					
					$("#username").val(data.username);
					$("#usercode").val(data.usercode);
					$("#level").val(data.level); */
					}else{
						alert("null");
					}
				}
			})
		};
		function aaa() {	
				 $("#myModal1").modal();
				 $("#but").click(function(){
				 var id=$("#id1").val();
				 var usercode=$("#usercode1").val();
				 var username=$("#username1").val();
				 var level=$("#level1").val();
				 $.ajax({
						type:"post",
						url:"${pageContext.request.contextPath }/user/update1",
						data:{id:id,usercode:usercode,username:username,level:level},
						dataType:"json",
						success:function(data){	
							if(data){	
							alert("修改成功");
							location.reload(true);
							}else{
						    alert("修改失败");
							}
						}
					});	
			     });
		};
	</script>
	<script type="text/javascript">
	$(function(){
		$("form").submit(function(){			
			var phone=$("#phone").val();
			var reg=/^1[3-9][0-9]{9}$/;
			if(reg.test(phone)){
				return true;
			}else{
				alert("手机格式错误");
				return false;
			}
			
		
		});
	})

</script>
   <script type="text/javascript">
	$(function(){
		$("form").submit(function(){		
			var mail=$("#eamil").val();
			var reg=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if(reg.test(mail)){
				return true;
			}else{
				alert("邮箱格式错误");
				return false;
			}
			
		});
	})

</script>
</head>
<body>
<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>   
    </div>
 <table class="table table-striped table-hover" id="tb">
  <tbody>
  <tr>
   <td><button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="javascript:updatebyid()">添加用户</button></td>
  </tr>
   <tr>
      <td>id</td>
      <td>名字</td>
      <td>账号</td>
      <td>等级</td>
      <td>操作</td>
      <td>操作</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加用户信息
				</h4>
			</div>
			<form class="form-horizontal"  id="form" method="post" action="${pageContext.request.contextPath }/user/add">
			<div class="modal-body">
				
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">名称</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="username" name="username" 
				>
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">编码</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="usercode" name="usercode"
				   >
		</div>
	</div>
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">密码</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="password" name="password"
				   >
		</div>
	</div>
	
				<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">电话</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="phone" name="phone"
				   >
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">邮箱</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="eamil" name="eamil"
				   >
		</div>
	</div>
			</div>
		
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary" id="submit">
					添加
				</button>
				
			</div></form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			
			<form class="form-horizontal"  id="form">
			<div class="modal-body">
	
		<div class="form-group">
		<div class="col-sm-10">
			<input type="hidden" class="form-control" id="id1" name="id" value="${getid.id }"
				   >
		</div>
	   </div>
				
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">用户名</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="username1" name="username" value="${getid.username }"
				   >
		</div>
	</div>
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">编码</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="usercode1" name="usercode" value="${getid.usercode }"
				   >
		</div>
	</div>
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">等级</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="level1" name="level" value="${getid.level }"
				   >
		</div>
	</div>
	

			</div>
		
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" id="but">
					提交
				</button>
				
			</div></form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>
<!-- <form class="form-horizontal" id="form" name="form" role="form" >
  
  <div class="form-group">
    <label for="id" class="col-sm-2 control-label">id</label>
    <div class="col-sm-4">
      <input type="text" name="id" class="form-control" id="id" value="">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="username" class="col-sm-2 control-label">username</label>
    <div class="col-sm-4">
      <input type="text" name="username" class="form-control" id="username" value="">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="usercode" class="col-sm-2 control-label">usercode</label>
    <div class="col-sm-4">
      <input type="text" name="usercode" class="form-control" id="usercode" value="">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
   <div class="form-group">
    <label for="level" class="col-sm-2 control-label">level</label>
    <div class="col-sm-4">
      <input type="text" name="level" class="form-control" id="level" value="">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
    </div>
 
</form> -->
</body>
</html>