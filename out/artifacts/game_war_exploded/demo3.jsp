<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/23
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选项卡</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>
<div class="layui-tab"  lay-filter="demo">
    <ul class="layui-tab-title">
        <li class="layui-this">网站设置</li>
        <li>用户管理</li>
        <li>权限分配</li>
        <li>商品管理</li>
        <li>订单管理</li>
        <li>我是</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            1. 高度默认自适应，也可以随意固宽。
            <br>2. Tab进行了响应式处理，所以无需担心数量多少。
        </div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item">内容4</div>
        <div class="layui-tab-item">内容5</div>
        <div class="layui-tab-item">傻逼</div>
    </div>
</div>
<div class="layui-btn-group">
    <button type="button" class="layui-btn layui-btn-primary" id="add">添加选项卡</button>
    <button type="button" class="layui-btn layui-btn-primary" id="change">删除最后一个选项卡</button>
    <button type="button" class="layui-btn layui-btn-primary">原始按钮</button>
</div>

<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','jquery'],function () {
            var $ = layui.jquery;
            var element = layui.element;
            $("#add").click(function () {
                element.tabAdd('demo', {
                    title: '选项卡的标题'
                    ,content: '选项卡的内容'
                });
            })

    })

</script>

</body>
</html>
