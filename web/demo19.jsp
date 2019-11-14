<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/8
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>滚动动画</title>

    <link rel="stylesheet" href="resources/layui/css/layui.css">
</head>
<body>
<div id="box" style="width: 100px;height: 100px;background-color: red;position: fixed;top: 1%;">
    置顶
</div>
<pre>
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
</pre>





<script src="resources/layui/layui.js"></script>
<script type="text/javascript">

    layui.use(['layer','jquery'],function () {
        var $ = layui.jquery;

        $(window).scroll(function () {

            if ($(window).scrollTop() > 1000)
                $('#box').show();
            else
                $('#box').hide();
        });


        $('#box').click(function () {
            $('html, body').animate({scrollTop: 0}, 1000);


        })
    })
</script>
</body>
</html>
