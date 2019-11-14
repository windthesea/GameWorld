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

<button type="button" class="layui-btn layui-btn-primary ">
    <span class="layui-badge">69</span>
    原始按钮
</button>

<button type="button" class="layui-btn layui-btn-primary ">
    <span class="layui-badge-dot"></span>
    原始按钮
</button>

<button class="layui-btn">动态<span class="layui-badge-dot layui-bg-orange"></span></button>

<br>

<ul class="layui-nav style=" text-align:="" right;"=""> &lt;-- 小Tips：这里有没有发现，设置导航靠右对齐（或居中对齐）其实非常简单 --&gt;
<li class="layui-nav-item">
    <a href="">控制台<span class="layui-badge">9</span></a>
</li>
<li class="layui-nav-item">
    <a href="">个人中心<span class="layui-badge-dot"></span></a>
</li>
</ul>


<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'],function () {
        
    })

</script>

</body>
</html>
