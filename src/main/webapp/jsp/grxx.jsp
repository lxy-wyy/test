<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/9/4
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp" %>
<head>
    <title>个人信息</title>
</head>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        酒会管理系统
                </div>
            </div>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>
                        编号
                    </th>
                    <th>
                        用户名
                    </th>
                    <th>
                        手机号
                    </th>
                </tr>
                </thead>
                <tbody>

                <tr class="success">
                    <td>
                        ${user.id}
                    </td>
                    <td>
                        ${user.username}
                    </td>
                    <td>
                        ${user.phone}
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@include file="common/header.jsp" %>