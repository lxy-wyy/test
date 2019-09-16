<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./common/header.jsp"%>


<table class="table table-striped table-hover">
  <tbody>
    <tr>
      <td>用户编码：${dl.usercode }</td>
    </tr>
    <tr>
      <td>用户姓名：${dl.username }</td>
    </tr>
     <tr>
      <td>用户等级：${dl.name }</td>
    </tr>
     <tr>
      <td >用户部门：${dl.deptId }</td>
    </tr>
     <tr>
      <td>用户区域：${dl.areaId }</td>
    </tr>
  </tbody>
</table>
<script src="${pageContext.request.contextPath}/statis/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statis/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statis/bootstrap-3.3.7-dist/css/bootstrap.min.css"> 
<%@include file="./common/footer.jsp"%>
</body>
</html>
