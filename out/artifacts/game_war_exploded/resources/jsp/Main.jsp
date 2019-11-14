<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/7
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>主页</title>
    <jsp:include page="Title.jsp"></jsp:include>
    <style>
        .mainbox{
            height: 300px;
            border: #0C0C0C solid 1px;
            display: inline-block;
            margin: 15px;
        }
        .mainbox *{
            display: inline-block;
        }
        .mainbox pre{
            line-height: 40px;
        }
        .roll img{
            width: 850px;
        }
    </style>
</head>
<body>
<div class="maindiv">
    <div class="mainbox" style="width: 850px;">

        <div class="layui-carousel" id="test1" lay-filter="test1">
            <div class="roll" carousel-item="">
                <div><img src="../image/QQ图片20190820150503.jpg"></div>
                <div><img src="../image/QQ图片20190820150503.jpg"></div>
                <div><img src="../image/QQ图片20190820150503.jpg"></div>
                <div><img src="../image/QQ图片20190820150503.jpg"></div>
                <div><img src="../image/QQ图片20190820150503.jpg"></div>
            </div>
        </div>

    </div>
    <div class="mainbox" style="width: 431px;float: right">
           <img src="../image/QQ图片20190820150503.jpg" style="width: 50px;height: 50px;border-radius:50%;margin: 30px;">
        <h1 style="width: 120px">白凯风</h1>
        <h2>Lv:1</h2>

<pre>
    <h2>攻击力</h2>
    <h2>防御力</h2>
    <h2>生命值</h2>
    <h2>经验值</h2>
</pre>


    </div>

</div>




<script>
    layui.use(['element','jquery','layer','form','laydate','carousel'],function () {
        var form = layui.form,
            $=layui.jquery,
            laydate=layui.laydate,
            element = layui.element,
            layer = layui.layer
            ,carousel = layui.carousel
        //初始化横幅定位
        $("#mainform").addClass("layui-this");
        //初始化滚动条
        carousel.render({
            elem: '#test1'
            ,interval:1800
            ,width:850
            ,height:300
        });


    })
</script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
