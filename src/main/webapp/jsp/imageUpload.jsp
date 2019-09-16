<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./common/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/imageUpload.css">
<script src="${pageContext.request.contextPath}/static/common/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/uploadImg26.js"></script>
 <div style="width: 100%;height: 100vh;position: relative;">
			<form id="upBox">
			     <input type="hidden" name="itemId" value="${item.id}"/>
				 <div id="inputBox"><input name="files" type="file" title="请选择图片" id="file" multiple accept="image/png,image/jpg,image/gif,image/JPEG"/>点击选择图片</div>
			     <div id="imgBox"></div>
			     <a id="btn">上传</a>
			</form>
		</div>
			<script type="text/javascript">
		//启用插件设置相应的参数
			imgUpload({
				inputId:'file', //input框id
				imgBox:'imgBox', //图片容器id
				buttonId:'btn', //提交按钮id
				upUrl:'${pageContext.request.contextPath}/tu/add',  //提交地址
				data:'files', //type="file"控件的name名
				formId:"upBox",//form表单的id
				num:"10"//上传个数
			})
		</script> 
<%@include file="./common/footer.jsp"%>
</body>
</html>
