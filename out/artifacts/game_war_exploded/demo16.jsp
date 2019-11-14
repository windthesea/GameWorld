<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/1
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <style>
        .site-doc-icon li{width: 222px;}
        .site-doc-icon li .layui-anim{width: 150px; height: 150px; line-height: 150px; margin: 0 auto 10px; text-align: center; background-color: #009688; cursor: pointer; color: #fff; border-radius: 50%;}
    </style>
</head>
<body>

<ul class="site-doc-icon site-doc-anim">
    <li>
        <div class="layui-anim" data-anim="layui-anim-up">从最底部往上滑入</div>
        <div class="code">layui-anim-up</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-upbit">微微往上滑入</div>
        <div class="code">layui-anim-upbit</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-scale">平滑放大</div>
        <div class="code">layui-anim-scale</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-scaleSpring">弹簧式放大</div>
        <div class="code">layui-anim-scaleSpring</div>
    </li>
</ul>
<ul class="site-doc-icon site-doc-anim">
    <li>
        <div class="layui-anim" data-anim="layui-anim-fadein">渐现</div>
        <div class="code">layui-anim-fadein</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-fadeout">渐隐</div>
        <div class="code">layui-anim-fadeout</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-rotate">360度旋转</div>
        <div class="code">layui-anim-rotate</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-rotate layui-anim-loop">循环动画</div>
        <div class="code">追加：layui-anim-loop</div>
    </li>
</ul>
<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'],function () {
        var $ = layui.$;

        //演示动画
        $('.site-doc-icon .layui-anim').on('click', function(){
            var othis = $("#mainForm"), anim = othis.data('anim');

            //停止循环
            if(othis.hasClass('layui-anim-loop')){
                return othis.removeClass(anim);
            }

            othis.removeClass(anim);

            setTimeout(function(){
                othis.addClass(anim);
            });

            //恢复渐隐
            /*if(anim === 'layui-anim-fadeout'){
                setTimeout(function(){
                    othis.removeClass(anim);
                }, 1300);
            }*/

        });
    })

</script>
</body>
</html>
