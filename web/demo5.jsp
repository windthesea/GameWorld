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
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>卡片面板</legend>
</fieldset>

<div style="padding: 20px; background-color: #F2F2F2;">
    <div class="layui-row layui-col-space15">//数字设置卡片间距0~30

        <div class="layui-col-md6">//数字设置卡片大小
            <div class="layui-card">
                <div class="layui-card-header">卡片面板</div>
                <div class="layui-card-body">
                    卡片式面板面板通常用于非白色背景色的主体内<br>
                    从而映衬出边框投影
                </div>
            </div>
        </div>

        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">卡片面板</div>
                <div class="layui-card-body">
                    结合 layui 的栅格系统<br>
                    轻松实现响应式布局
                </div>
            </div>
        </div>

        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">标题</div>
                <div class="layui-card-body">
                    内容
                </div>
            </div>
        </div>
    </div>
</div>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>常规折叠面板</legend>
</fieldset>

<div class="layui-collapse" lay-filter="test">

    <div class="layui-colla-item">
        <h2 class="layui-colla-title">贤心是男是女？</h2>
        <div class="layui-colla-content">
            <p>man！ 所以这个问题不要再出现了。。。</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">测试用</h2>
        <div class="layui-colla-content layui-show">//设置展开卡片
            <p>这是内容</p>
        </div>
    </div>
</div>

<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','jquery'],function () {
        var $ = layui.jquery;
        var element = layui.element;

        element.on('collapse(test)',function (date) {
            console.log(date.show);
        })

    })

</script>
</body>
</html>
