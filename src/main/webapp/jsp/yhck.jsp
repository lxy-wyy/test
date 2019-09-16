<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/9/5
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/zTree/css/demo.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/zTree/js/jquery.ztree.excheck.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/zTree/js/jquery.ztree.exedit.js"></script>
<head>
    <title>用户管理</title>
</head>



<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2">

        </div>
        <div class="span10">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        编号
                    </th>
                    <th>
                        产品
                    </th>
                    <th>
                        交付时间
                    </th>
                    <th>
                        状态
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        1
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        01/04/2012
                    </td>
                    <td>
                        Default
                    </td>
                </tr>
                <tr class="success">
                    <td>
                        1
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        01/04/2012
                    </td>
                    <td>
                        Approved
                    </td>
                </tr>
                <tr class="error">
                    <td>
                        2
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        02/04/2012
                    </td>
                    <td>
                        Declined
                    </td>
                </tr>
                <tr class="warning">
                    <td>
                        3
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        Pending
                    </td>
                </tr>
                <tr class="info">
                    <td>
                        4
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        04/04/2012
                    </td>
                    <td>
                        Call in to confirm
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@include file="common/header.jsp" %>