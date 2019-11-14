<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/13
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">

</head>
<body>

<div class="layui-carousel" id="test1" lay-filter="test1">
    <div carousel-item="">
        <div>条目1</div>
        <div>条目2</div>
        <div>条目3</div>
        <div>条目4</div>
        <div>条目5</div>
    </div>
</div>

<div class="layui-carousel" id="test2" style="margin-top: 15px;">
    <div carousel-item="">
        <div>条目1</div>
        <div>条目2</div>
    </div>
</div>

<script src="resources/layui/layui.js"></script>
<script>
    layui.use(['form', 'carousel', 'laydate','layer'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,carousel = layui.carousel
            ,laydate = layui.laydate;

        //常规轮播
        carousel.render({
            elem: '#test1'
            ,interval:1800
            ,width:900
            ,height:300
        });
        //改变下时间间隔、动画类型、高度
        carousel.render({
            elem: '#test2'
            ,interval: 1800
            ,anim: 'fade'
            ,height: '120px'
        });

    })
</script>
</body>
</html>
