<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/29
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/layui/css/layui.css">
    <style>
        #abox,#box {
            border-radius:0px 0px 200px 200px;/*圆角半径为高度的值*/
            text-align: center;
        }
    </style>
</head>
<body>
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
1
1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
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
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
11
1
1
1

1
1
1

    </pre>

<form class="layui-form" action="">
<div class="layui-layer layui-layer-page" id="box" type="page" times="2" showtime="0" contype="object" style="z-index: 19891016; position: fixed; top: 0px; left: 900.344px;">
    <div class="layui-layer-title" id="abox" style="cursor: move;">

    </div>

</div>
</form>
<script src="resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element','layer','form', 'layedit', 'laydate'],function () {

        var $=layui.jquery;
        var layer=layui.layer;

    })

</script>
<script type="text/javascript">
    var oDiv=document.getElementById('box');
    oDiv.onmousedown=function(ev){
        var disX=ev.clientX-oDiv.offsetLeft;
        var disY=ev.clientY-oDiv.offsetTop;
        document.onmousemove=function(ev){
            var l=ev.clientX-disX;
            var t=ev.clientY-disY;

            oDiv.style.left=l+'px';
            oDiv.style.top=t+'px';




        }
        document.onmouseup=function(){
            document.onmousemove=null;
            document.onmouseup=null;
        }


    }
</script>
</body>
</html>
