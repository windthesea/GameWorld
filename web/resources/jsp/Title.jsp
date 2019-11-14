<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/3
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/mainbox.css">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <link rel="stylesheet" href="../css/scrol.css">
    <style>
        #remove {
            border-radius: 0px 0px 200px 200px; /*圆角半径为高度的值*/
            text-align: center;
            z-index: 1989;
            position: fixed;
            top: 0px;
            left: 47.3%;
            height: 55px;
        }

        .loading {
            position: fixed;
            top: 0px;
            width: 101%;
            z-index: 999
        }

        .title .layui-nav-item {
            line-height: 55px;
            margin-right: 15px;
        }

        .fr {
            float: right;
        }

        .site-doc-icon {
            margin-bottom: 50px;
            font-size: 0;
        }

        .site-doc-icon li {
            display: inline-block;
            vertical-align: middle;
            width: 127px;
            height: 105px;
            line-height: 25px;
            padding: 20px 0;
            margin-right: -1px;
            margin-bottom: -1px;
            border: 1px solid #e2e2e2;
            font-size: 14px;
            text-align: center;
            color: #666;
            transition: all .3s;
            -webkit-transition: all .3s;
            margin: 35px;
            border-radius: 10px
        }

        .site-doc-anim li {
            height: auto;
        }

        .site-doc-icon li .layui-icon {
            display: inline-block;
            font-size: 36px;
            margin: 25px
        }

        .site-doc-icon li .doc-icon-name,
        .site-doc-icon li .doc-icon-code {
            color: #c2c2c2;
        }

        .site-doc-icon li .doc-icon-fontclass {
            height: 40px;
            line-height: 20px;
            padding: 0 5px;
            font-size: 13px;
            color: #333;
        }

        .site-doc-icon li:hover {
            background-color: #f2f2f2;
            color: #000;
        }
    </style>
</head>
<body>
<div class="layui-layer layui-layer-page remove" id="remove" type="page" times="2" showtime="0" contype="object" style="">
    <div class="layui-layer-title" style="cursor: move;height: 0px;"></div>
    <img id="removeimg" src="../image/QQ图片20190820150503.jpg" style="width:50px;height:50px;border-radius: 50%">
</div>
<header>
    <div style="" class="loading">
        <div id="loadmain" class="layui-progress">
            <div id="load" class="layui-progress-bar" lay-percent="100%"></div>
        </div>
    </div>




</header>
<div>
    <ul class="layui-nav title">
        <li class="layui-nav-item">
            <a id="mainform" href="Main.jsp">主页</a>
        </li>

        <li class="layui-nav-item">
            <a id="lower" href="Lower.jsp">进入副本</a>
        </li>

        <li class="layui-nav-item ">
            <a id="backpack" href="Backpack.jsp">我的背包</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">选项1</a></dd>
                <dd><a href="javascript:;">选项2</a></dd>
                <dd><a href="javascript:;">选项3</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item">
            <a href="javascript:;">排行榜</a>
            <dl class="layui-nav-child">
                <dd class=""><a href="javascript:;">等级排行</a></dd>
                <dd class=""><a href="javascript:;">金币排行</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item">
            <a id="lucky" href="Lucky.jsp">抽奖</a>
        </li>

        <li id="shopping" class="layui-nav-item">
            <a href="Shopping.jsp">商店</a>
        </li>

        <li class="layui-nav-item">
            <a href="Archive.jsp">图鉴</a>
            <dl class="layui-nav-child">
                <dd class=""><a href="javascript:;">武器图鉴</a></dd>
                <dd class=""><a href="javascript:;">怪物图鉴</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item fr" lay-unselect="">
            <a href="javascript:;"><img src="../image/QQ图片20190820150503.jpg" class="layui-nav-img">用户昵称</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">个人信息</a></dd>
                <dd><a href="javascript:;">账号管理</a></dd>
                <dd><a href="javascript:;">退出账号</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item fr">
            <a id="community" href="Community.jsp">社区</a>
            <dl class="layui-nav-child">
                <dd class=""><a href="javascript:;">关于我们</a></dd>
                <dd class=""><a href="javascript:;">Bug反馈</a></dd>
            </dl>
        </li>

        <li id="notice" class="layui-nav-item fr">
            <a href="javascript:;">公告</a>
        </li>

        <li class="layui-nav-item fr">
            <a href="<%=request.getContextPath()+"/servlet?method=fortran"%>" id="timetree">时间树</a>
        </li>
    </ul>
</div>


<footer>

</footer>

<hide id="removebag" style="display: none">
    <ul class="site-doc-icon">
        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">背包</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">副本</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">商店</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">抽奖</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">图鉴</div>
            </li>
        </a>

        <a id="renotice">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">公告</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">社区</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">个人中心</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">时间树</div>
            </li>
        </a>

        <a href="Backpack.jsp">
            <li>
                <i class="layui-icon layui-icon-rate-half"></i>
                <div class="doc-icon-fontclass">待更新</div>
            </li>
        </a>

    </ul>
</hide>
<div id="top" style="width: 100px;height: 100px;background-color: red;position: fixed;top: 90%;right: 0%;display: none"></div>

<script src="../layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element', 'jquery', 'layer', 'form', 'laydate'], function () {
        var $ = layui.jquery;
        var form = layui.form;
        var laydate = layui.laydate;
        var element = layui.element;
        var layer = layui.layer;

        $("#loadmain").fadeOut();

        if ($(window).scrollTop()<200)
            $("#top").fadeOut();
        else
            $("#top").fadeIn();


        setTimeout(function () {
            $("#load").css('width', '0px');
        }, 1000)


        $("#removeimg").dblclick(function () {
            layer.open({
                type: 1
                ,area: ['995px', '700px']
                ,offset: 'offset: \'100px\''
                ,anim: 2
                ,title: false
                ,closeBtn: 0 //不显示关闭按钮
                ,shadeClose: true //开启遮罩关闭
                ,content: $('#removebag')
            });
        })

        $("#notice,#renotice").click(function () {
            layer.open({
                title: false //不显示标题栏
                ,closeBtn: false
                ,shadeClose: true //开启遮罩关闭
                ,offset: 'offset: \'100px\''
                ,area: ['995px', '700px']
                ,shade: 0.8
                ,content: ''
                ,anim: 4
            })
        })



        $(window).scroll(function () {

            if ($(window).scrollTop() > 200)
                $('#top').show();
            else
                $('#top').hide();

        });


        $('#top').click(function () {
            var num=$(window).scrollTop();
            $('html, body').animate({scrollTop: 0}, num);
        })


        // 封装进度条事件
        function submits() {
            $("#loadmain").fadeToggle();

            $("#load").animate({'width': '90%'}, 500);

            $("#load").animate({'width': '100%'}, 1000);

            setTimeout(function () {
                $("#loadmain").fadeToggle();

                $("#load").css('width', '0px');
            }, 2500)
        }





    });

</script>
<script type="text/javascript">
    var oDiv = document.getElementById('remove');
    oDiv.onmousedown = function (ev) {
        var disX = ev.clientX - oDiv.offsetLeft;
        var disY = ev.clientY - oDiv.offsetTop;
        document.onmousemove = function (ev) {


            var l = ev.clientX - disX;
            var t = ev.clientY - disY;

            oDiv.style.left = l + 'px';
            oDiv.style.top = t + 'px';

        }
        document.onmouseup = function () {
            document.onmousemove = null;
            document.onmouseup = null;
        }


    }
</script>
</body>
</html>
