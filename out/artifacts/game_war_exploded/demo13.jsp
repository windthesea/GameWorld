<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/29
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <style type="text/css">
        #box{
            position:absolute;
        }
    </style>

</head>
<body>
<div id='box' style="position:fixed;width:100px;height:100px;background-color:red">

</div>

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
