<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/11/4
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="resources/layui/css/layui.css" />
</head>
<body>

<a href="<%=request.getContextPath()%>/aaaa?method=res">aaa</a>
<div style="width: 400px">
<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">输入框</label>
        <div class="layui-input-block">
            <input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">滑动验证</label>
        <div class="layui-input-block">
            <div id="slider"></div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</div>
<script src="resources/layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.config({
        base: 'resources/layui_exts/sliderVerify/'
    }).use(['sliderVerify', 'jquery', 'form'], function() {
        var sliderVerify = layui.sliderVerify,
            form = layui.form;
        var slider = sliderVerify.render({
            elem: '#slider',

            onOk: function(){
                layer.msg("滑块验证通过");
            }
        })
        //监听提交
        form.on('submit(formDemo)', function(data) {
            if(slider.isOk()){//用于表单验证是否已经滑动成功
                layer.msg(JSON.stringify(data.field));
            }else{
                layer.msg("请先通过滑块验证");
            }
            return false;
        });

    })
</script>

</body>
</html>
