<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/13
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="Title.jsp"></jsp:include>
</head>
<body>
<div class="maindiv" style="">
    111这是楼层
</div>

<script>
    layui.use(['element','jquery','layer','form','laydate','layedit'],function () {
        var form = layui.form,
            layedit = layui.layedit,
            $=layui.jquery,
            laydate=layui.laydate,
            element = layui.element,
            layer = layui.layer

        $("#").addClass("layui-this");


    })
</script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
