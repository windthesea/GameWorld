package com.wind.game.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wind.game.enity.Fortran;
import com.wind.game.enity.User;
import com.wind.game.serivce.impl.ToolSiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:18:42
 *@description:
 *@Version:1.0
 */
@WebServlet("/servlet")
public class Servlet extends BaseServlet {
    ToolSiz toolSiz=new ToolSiz();
    ObjectMapper map=new ObjectMapper();
    public void res(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String date=request.getParameter("date");
        User user = map.readValue(date, User.class);


        map.writeValue(response.getWriter(),user);
    }

    public void login(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        String date=request.getParameter("date");

        User login = map.readValue(date, User.class);

        String name=null;
        try {

            List<User> logining = toolSiz.login(login);
            for (User names : logining){
                name= names.getUname();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        Map<String,Object> hashmap=new HashMap<String,Object>();

        if (name!=null){

            System.out.println("登陆成功");
            hashmap.put("statess",true);

        }else {

            System.out.println("登陆失败");
            hashmap.put("statess",false);

        }
        map.writeValue(response.getWriter(),hashmap);
    }
    public void fortran(HttpServletRequest request, HttpServletResponse response)throws Exception{
        List<Fortran> fortran = toolSiz.fortran();


        request.getSession().setAttribute("fortran",fortran);

        response.sendRedirect(request.getContextPath()+"/resources/jsp/Fortran.jsp");
    }
}
