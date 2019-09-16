<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/ztree/css/demo.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-3.2.1.min.js"></script>
	<!-- <script type="text/javascript" src="/hanjia/static/ztree/js/jquery-1.4.4.min.js"></script> -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.exedit.js"></script>	
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<script type="text/javascript">
	
		var setting = {
			view: {
				addHoverDom: addHoverDom,
				removeHoverDom: removeHoverDom,
				selectedMulti: false
			},
		    async: {
			    	enable:true,
			        url:"${pageContext.request.contextPath }/user/getdept",
			        autoParam:["id","name","pId"]
			},
			edit: {
				enable: true,
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeRemove: beforeRemove,
				onRename: onRename
			}
		};

		
		var log, className = "dark";
		function beforeDrag(treeId, treeNodes) {
		}
		
		
		function onRename(e, treeId, treeNode, isCancel) {
			var id=treeNode.id;
			var name=treeNode.name;
			var isParent=treeNode.isParent;
			 alert(id);
			 alert(isParent);
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath }/user/update2",
				data:{id:id,name:name,isParent:isParent},
				dataType:"json",
				success:function(data){	
					if(data){	
					alert("修改成功");	
					}else{
				    alert("修改失败");
					}
				}
			});	
		}
		

		var newCount = 1;
		function addHoverDom(treeId, treeNode) {
			var sObj = $("#" + treeNode.tId + "_span");
			if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
			var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
				+ "' title='add node' onfocus='this.blur();'></span>";
			sObj.after(addStr);
			var btn = $("#addBtn_"+treeNode.tId);
			if (btn) btn.bind("click", function(){		
				 $("#myModal").modal();				 
				 $("#but").click(function(){
				 var pId=treeNode.pId;
				 var isParent=treeNode.isParent;
				 var name=$("#name").val();
				 $.ajax({
						type:"post",
						url:"${pageContext.request.contextPath }/user/add1",
						data:{pId:pId,name:name,isParent:isParent},
						dataType:"json",
						success:function(data){	
							if(data){	
							alert("添加成功");
							location.reload(true);
							}else{
						    alert("添加失败");
							}
						}
					});	
			     });	
			});
		};
		function removeHoverDom(treeId, treeNode) {
			$("#addBtn_"+treeNode.tId).unbind().remove();
		};
		
		function beforeRemove(treeId, treeNode) {			
			var id=treeNode.id;
			var isParent=treeNode.isParent;
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath }/user/del1",
				data:{id:id,isParent:isParent},
				dataType:"json",
				success:function(data){	
					if(data){	
						className = (className === "dark" ? "":"dark");
						var zTree = $.fn.zTree.getZTreeObj("treeDemo");
						zTree.selectNode(treeNode);
						return confirm("确定删除 " + treeNode.name + "吗?");
					}else{
				    alert("删除失败");
					}
				}
			});	
		}		
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
			});
		});
	</script>
	<style type="text/css">
.ztree li span.button.add {margin-left:2px; margin-right: -1px; background-position:-144px 0; vertical-align:top; *vertical-align:middle}
	</style>
</head>
<body>


     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<form id="form2" class="form-horizontal">
    <br>  <br>
   <div class="form-group">
    <label for="name" class="col-sm-2 control-label">name</label>
    <div class="col-sm-4">
      <input type="text" name="name" class="form-control" id="name">
    </div>
    <div class="col-md-3">
    <span class="help-block"></span>
    </div>
    
  </div>
    <br>  <br>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button id="but" type="button" class="btn btn-default">添加</button>
    </div>
  </div>
</form>
</div> 




<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	
</div>
<body>
</html>