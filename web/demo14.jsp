<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/30
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="resources/layui/css/layui.css">
<body>

<div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
    <blockquote class="layui-elem-quote layui-quote-nm">
        Tips：为了更清晰演示，每触发下述一个例子之前，都会关闭所有已经演示的层
    </blockquote>
    <button data-method="offset" data-type="t" class="layui-btn layui-btn-normal" id="a">弹出</button>
    <button data-method="offset" data-type="r" class="layui-btn layui-btn-normal" id="b">弹出</button>
    <button data-method="offset" data-type="b" class="layui-btn layui-btn-normal" id="c">弹出</button>
    <button data-method="offset" data-type="l" class="layui-btn layui-btn-normal" id="d">弹出</button>
    <button data-method="offset" data-type="lt" class="layui-btn layui-btn-normal" id="e">弹出</button>
    <button data-method="offset" data-type="lb" class="layui-btn layui-btn-normal" id="f">弹出</button>
    <button data-method="offset" data-type="rt" class="layui-btn layui-btn-normal" id="g">弹出</button>
    <button data-method="offset" data-type="rb" class="layui-btn layui-btn-normal" id="h">弹出</button>
    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal" id="i">弹出</button>
</div>
<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','layer','jquery'],function () {
        var $ = layui.jquery;
        var  layer = layui.layer;
        var element=layui.element;

        $("#a").click(function () {
            layer.alert("111");
        })
        $("#b").click(function () {
            layer.confirm('is not?', {icon: 3, title:'提示'}, function(index){

                layer.close(index);
            });
        })
        $("#c").click(function () {
            layer.msg('只想弱弱提示');
        })
        $("#d").click(function () {

        })
        $("#e").click(function () {

        })
        $("#f").click(function () {

        })
        $("#g").click(function () {

        })
        $("#h").click(function () {

        })
        $("#i").click(function () {

        })

    })

</script>
</body>
</html>
