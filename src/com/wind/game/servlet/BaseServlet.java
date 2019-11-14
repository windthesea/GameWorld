package com.wind.game.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * Created by IntelliJ IDEA.
 *
 * @author ko no dio da！
 * @time 2019/10/27 16:12
 */
public class BaseServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //编码
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数
        String methodType = req.getParameter("method");


        //如果参数为空或者为长度为0的字符串，那么抛出运行时异常
        if (methodType==null||methodType.isEmpty()){
            throw new RuntimeException("访问的方法为空");

        }

        //获取servlet的class
        Class clazz = this.getClass();


        try {
            //获取方法，methodtype==属性名，后面两个是方法参数的类类型
            Method method = clazz.getMethod(methodType,HttpServletRequest.class,HttpServletResponse.class);

            /*String url=(String)*/method.invoke(this,req,resp);

            /*
            if (url.startsWith("s:")){
                resp.sendRedirect( url.substring(2));
            }else{
                req.getRequestDispatcher(url).forward(req,resp);
            }
             */
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
