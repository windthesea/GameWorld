<%--
  Created by IntelliJ IDEA.
  User: wind-white
  Date: 2019/10/22
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>GameWorld</title>
      <link rel="stylesheet" href="resources/layui/css/layui.css">
      <link rel="stylesheet" href="resources/css/login.css" type="text/css" >
      <style>

*{
  margin: 0px;
  padding: 0px;
}
#loginForm{
  padding: 20px;
  width: 530px;
  height: 350px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(20%,-60%);
  border-radius:25px;
  text-align: center;
  box-shadow:3px 3px 4px 3px #c8c8c8;

}
#resuser{
  text-align: center;
}
.layui-form-item{
  margin-left:34px;
  margin: 25px;
}
input[type=text],input[type=upwd]{
  width: 340px;
}
button[type=button]{
  width: 100px;
}
      </style>
  </head>
  <body>

  <div id="loadmain" class="layui-progress">
      <div id="load" class="layui-progress-bar" lay-percent="100%"></div>
  </div>

  <div id="loginForm"  data-anim="layui-anim-fadeout">
      <img src="resources/image/QQ图片20190820150503.jpg" style="height: 40px">
        <form class="layui-form  layui-form-pane" id="login" action="" lay-filter="example" style="margin-top: 30px">



            <div class="layui-form-item">
                <label class="layui-form-label" for="uname">账号</label>
                <div class="layui-input-block">
                    <input type="text" id="uname" name="uname" lay-verify="title|required" autocomplete="off" placeholder="请输入账号" class="layui-input" style="width: 300px">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label"  for="upwd">密码</label>
                <div class="layui-input-block">
                    <input type="password" id="upwd" name="upwd" lay-verify="title|required" autocomplete="off" placeholder="请输入密码" class="layui-input" style="width: 300px">
                </div>
            </div>



            <div class="layui-form-item" style="width: 410px">
                <label class="layui-form-label">滑动验证</label>
                <div class="layui-input-block">
                    <div id="slider" ></div>

                </div>
            </div>

 <button type="submit" lay-submit="" id="s" class="layui-btn" style="display: none" lay-filter="demo1"></button>

            <button type="button" lay-submit="" id="button" class="layui-btn">登陆</button>

        </form>


      <form class="layui-form  layui-form-pane" action="" style="float: right;margin-top: 200px">
          <div class="layui-form-item">
              <div class="layui-input-block" id="click">                <%--onClick="location.href='http://www.ddhbb.com/'"--%>
                  <input type="checkbox" name="close" lay-skin="switch" lay-text="登陆|注册">
              </div>
          </div>
      </form>


  </div>


  <div id="resForm" style="display: none;">

      <form id="resuser" class="layui-form  layui-form-pane" action="" lay-filter="resform" style="margin-top: 30px;">
          <div class="layui-form-item">
              <label class="layui-form-label">账号</label>
              <div class="layui-input-block">
                  <input type="text"  name="uname" lay-verify="title|required"  autocomplete="off" placeholder="请输入账号" class="layui-input">
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">密码</label>
              <div class="layui-input-block">
                  <input type="password" name="upwd" lay-verify="title|required" autocomplete="off" placeholder="请输入密码" class="layui-input">
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">确认密码</label>
              <div class="layui-input-block">
                  <input type="password"  lay-verify="title|required" autocomplete="off" placeholder="请再次输入密码" class="layui-input">
              </div>
          </div>

          <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
              <legend>GameWorld</legend>
          </fieldset>

          <div class="layui-form-item">
              <label class="layui-form-label">昵称</label>
              <div class="layui-input-block">
                  <input type="text" name="name" lay-verify="title|required" autocomplete="off" placeholder="请取昵称吧" class="layui-input">
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">性别</label>
              <div class="layui-input-block">
                  <input type="radio" name="sex" value="1" title="男" checked="">
                  <input type="radio" name="sex" value="0" title="女">
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">出生日期</label>
              <div class="layui-input-inline">
                  <input type="text" name="birthdate" class="layui-input" id="test1" readonly="true">
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">密保问题</label>
              <div class="layui-input-block">
                  <select name="question" lay-filter="aihao">
                      <option value="" selected=""></option>
                      <option value="0">写作</option>
                      <option value="1">阅读</option>
                      <option value="2">游戏</option>
                      <option value="2">游戏</option>
                  </select>
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">密保答案</label>
              <div class="layui-input-block">
                  <input type="text" name="encrypted" lay-verify="title" autocomplete="off" placeholder="选填" class="layui-input">
              </div>
          </div>

          <button type="submit" lay-submit="" id="r" class="layui-btn" style="display: none" lay-filter="demo2"></button>
          <button type="reset" id="res" class="layui-btn layui-btn-primary" style="display: none"></button>
          <button type="button" lay-submit="" id="resbutton" class="layui-btn" style="margin-top: 30px;">注册</button>
      </form>
  </div>


  <footer style="position: absolute;top: 90%">

      制作: wind_white        美工:                      画师:

  </footer>

  <script src="resources/layui/layui.js"></script>
  <script type="text/javascript">

      layui.use(['element','jquery','layer','form','laydate'],function () {
        var $=layui.jquery;
          var form=layui.form;
          var laydate=layui.laydate;
          var element = layui.element;
          var layer = layui.layer;

          $("#loadmain").fadeOut();

          setTimeout(function () {
              $("#load").css('width','0px');
          },1000)

          laydate.render({
              elem: '#test1',
              value:new Date(),
              type: 'date',
              max:0
          });

        $("#uname").focus(function () {
            $("#uname").css('width','370px');
        }), $("#uname").blur(function () {
            $("#uname").css('width','300px');
        });

          $("#upwd").focus(function () {
              $("#upwd").css('width','370px');
          }), $("#upwd").blur(function () {
              $("#upwd").css('width','300px');
          });

          $("#authcode").focus(function () {
              $("#authcode").css('width','300px');
          }), $("#authcode").blur(function () {
              $("#authcode").css('width','202px');
          });

          $("#button").hover(function(){
              $("#button").css('width','200px');
          },function(){
              $("#button").css('width','100px');
          });

        $("#click").click(function () {
            layer.open({
                type: 1,
                title: false,
                area:['500px','725px'],
                content: $("#resForm"),
                end : function(){
                   $("#res").click();
                }
            })
        });

          $("#resbutton").hover(function(){
              $("#resbutton").css('width','200px');
          },function(){
              $("#resbutton").css('width','100px');
          });

            $("#button").click(function () {
                $("#s").click();
            })

          form.on('submit(demo1)', function(data){
              var data = form.val('example');
              $.post("<%=request.getContextPath()%>/servlet?method=login",{date:JSON.stringify(data)},function x(dates) {

                  submits()

                  setTimeout(function() {

                          if (dates.statess) {
                              window.location.href = '<%=request.getContextPath()%>/resources/jsp/Main.jsp';
                          }else {
                              layer.msg('登陆信息错误');
                          }
                  },2500);


              },"json")

              return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
          });


          $("#resbutton").click(function () {
              $("#r").click();
          })

          form.on('submit(demo2)', function(data){
              var data = form.val('resform');
              $.post("<%=request.getContextPath()%>/servlet?method=res",{date:JSON.stringify(data)},function x(dates) {

                  layer.load();//此处演示关闭


                  setTimeout(function(){
                      layer.closeAll('loading');
                      setTimeout(function() {


                          layer.msg('注册成功');
                      },50);
                  }, 2000);
              },"json")

              return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
          });

          function submits(){
              $("#loadmain").fadeToggle();

              $("#load").animate({'width':'90%'},500);

              $("#load").animate({'width':'100%'},1000);

              setTimeout(function () {
                  $("#loadmain").fadeToggle();

                  $("#load").css('width','0px');
              },2500)
          }

      })

  </script>
<%--  滑块验证--%>
  <script type="text/javascript">
      //一般直接写在一个js文件中
      layui.config({
          base: 'resources/layui_exts/sliderVerify/'
      }).use(['sliderVerify', 'jquery', 'form'], function() {
          var sliderVerify = layui.sliderVerify,
              form = layui.form;
          var slider = sliderVerify.render({
              elem: '#slider',
              onOk: function(){//当验证通过回调

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
