<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
	<body>
	<head>
		<meta charset="utf-8" />
		<title>酒会管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />

		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/style.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/table/bootstrap-table.min.css">

		<script src="${pageContext.request.contextPath}/static/assets/js/ace-extra.min.js"></script>

		<script src="${pageContext.request.contextPath}/static/common/jquery-3.2.1.min.js"></script>

		<script type="text/javascript">
            if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

		<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/table/bootstrap-table.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/table/locale/bootstrap-table-zh-CN.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/assets/js/typeahead-bs2.min.js"></script>

			<script src="${pageContext.request.contextPath}/static/assets/js/ace-elements.min.js"></script>
			<script src="${pageContext.request.contextPath}/static/assets/js/ace.min.js"></script>
			<script src="${pageContext.request.contextPath}/static/assets/layer/layer.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/assets/laydate/laydate.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/assets/jquery.nicescroll.js" type="text/javascript"></script>
		<%--<script src="${pageContext.request.contextPath}/static/common/witkey.js" type="text/javascript"></script>--%>
		<script src="/static/js/echarts.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/static/common/dataFormater.js" type="text/javascript"></script>
	</head>
