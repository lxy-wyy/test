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

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2">


            <div class="content_wrap">
                <div class="zTreeDemoBackground left">
                    <ul id="treeDemo" class="ztree"></ul>
                </div>

            </div>


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