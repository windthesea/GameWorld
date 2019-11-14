<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/7
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>

<form class="layui-form" action="">

<div class="layui-form-item">

    <label class="layui-form-label">自定义验证</label>

    <div class="layui-input-inline">
        <input type="text" name="text" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>

</div>

    <button type="submit" lay-submit="" id="s" class="layui-btn" style="" lay-filter="demo1"></button>

</form>

<script src="resources/layui/layui.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate','layer'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        form.verify({
               pass: [
                /^\d+$/
                ,'密码必须6到12位，且不能出现空格'
            ]
        });

    })
</script>
</body>
</html>
