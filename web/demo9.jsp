<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/23
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>标题栏</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>常规用法</legend>
</fieldset>

<div class="layui-form">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">中文版</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd HH-mm-ss" readonly="true">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">国际版</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="test1-1" placeholder="yyyy-MM-dd" readonly="true">
            </div>
        </div>
    </div>
</div>

<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','laydate'],function () {
        //常规用法
        var laydate = layui.laydate;
        laydate.render({
            elem: '#test1',
            value:new Date(),
            type: 'date',
            max:0
        });


        laydate.render({
            elem: '#test1-1'

        });
    })

</script>

</body>
</html>
