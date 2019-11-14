<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/24
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卡片面板</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <style>
        .grid-demo{
            background-color: red;
        }
        .grid-demo-bg1{
            background-color: #00F7DE;
        }

    </style>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>始终等比例水平排列</legend>
</fieldset>

<div class="layui-row">
    <div class="layui-col-xs6">
        <div class="grid-demo grid-demo-bg1">6/12</div>
    </div>
    <div class="layui-col-xs6">
        <div class="grid-demo">6/12</div>
    </div>
</div>
<div class="layui-row">
    <div class="layui-col-xs3">
        <div class="grid-demo grid-demo-bg1">3/12</div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo">3/12</div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo grid-demo-bg1">3/12</div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo">3/12</div>
    </div>
</div>


<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','jquery'],function () {


    })

</script>
</body>
</html>
