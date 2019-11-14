<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/22
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>按钮</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<style>
    *{padding: 0px;
        margin: 0px}
</style>
<body>

<script src="resources/layui/layui.js"></script>
<script>
    /*layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form;

        layer.msg('Hello World');
    });*/

</script>
<div class="layui-icon">&#xe67b;</div>
<div class="layui-icon layui-icon-cellphone"></div>

<fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
    <legend>按钮主题</legend>
    <div>
        <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>

        <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>

        <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>

        <button type="button" class="layui-btn layui-btn-primary layui-btn-radius">原始按钮</button>

        <button type="button" class="layui-btn layui-btn-primary ">
            <span class="layui-icon">&#xe67b;</span>手机按钮
        </button>



        <button type="button" class="layui-btn">默认按钮</button>
        <button type="button" class="layui-btn layui-btn-normal">百搭按钮</button>
        <button type="button" class="layui-btn layui-btn-warm">暖色按钮</button>
        <button type="button" class="layui-btn layui-btn-danger">警告按钮</button>
        <button type="button" class="layui-btn layui-btn-disabled">禁用按钮</button>
    </div>


</fieldset>
<div class="layui-btn-group">
    <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>
    <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>
    <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>
</div>
</body>
</html>
