
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>时间树</title>
    <jsp:include page="Title.jsp"></jsp:include>
    <style>

    </style>
</head>
<body>

<div class="maindiv">
    <div style="margin: 15px">

        <ul class="layui-timeline">
            <c:forEach items="${sessionScope.fortran}" var="fortran">

            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis"></i>
                <div class="layui-timeline-content layui-text">
                    <h2 class="layui-timeline-title">${fortran.ftime}</h2>
                    <p>
                        ${fortran.fcontext} <i class="layui-icon" style="margin-left:5px;font-size : 20px;color: #ff000e;">&#xe6c6;</i>

                        <pre>

                        </pre>
                    </p>
                </div>
            </li>

            </c:forEach>



        </ul>
    </div>
</div>

<script>
    layui.use(['element','jquery','layer','form','laydate','layedit'],function () {
        var form = layui.form,
            layedit = layui.layedit,
            $=layui.jquery,
            laydate=layui.laydate,
            element = layui.element,
            layer = layui.layer

        var editIndex = layedit.build('LAY_demo_editor');

        $("#timetree").addClass("layui-this");
    })
</script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
