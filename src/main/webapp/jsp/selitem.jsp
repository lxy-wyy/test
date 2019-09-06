<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/9/4
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp" %>
<head>
    <title>数据查看</title>
</head>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span6">
            <form class="form-search">
                <input class="input-medium search-query" type="date" /> -- <input class="input-medium search-query" type="date" /> <button type="submit" class="btn">查找</button>
            </form>
        </div>
        <div class="span6">
            <button id="" class="btn" type="button">统计图</button>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        <span>机构名称</span>
                    </th>
                    <td>
                        <span>召开时间</span>
                    </td>
                    <th>
                        <span>计划召开桌数</span>
                    </th>
                    <th>
                        <span>实际召开桌数</span>
                    </th>
                    <th>
                        <span>执行率</span>
                    </th>
                    <th>
                        <span>新客户</span>
                    </th>
                    <th>
                        <span>旧客户</span>
                    </th>
                    <th>
                        <span>意向客户</span>
                    </th>
                    <th>
                        <span>预估保费</span>
                    </th>
                </tr>
                </thead>
                <tbody>
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
                        03/04/2012
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        03/04/2012
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="common/header.jsp" %>