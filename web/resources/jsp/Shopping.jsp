<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/8
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商店</title>
    <jsp:include page="Title.jsp"></jsp:include>
</head>
<body>

<div class="maindiv" style="">
    111这是商店
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
