package com.wind.game.serivce.impl;

import com.wind.game.dao.ITool;
import com.wind.game.dao.impl.Tool;
import com.wind.game.enity.Fortran;
import com.wind.game.enity.User;
import com.wind.game.serivce.ToolSerivce;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:19:03
 *@description:
 *@Version:1.0
 */
public class ToolSiz implements ToolSerivce {
        ITool iTool=new Tool();
    @Override
    public List<User> login(User admin) throws Exception {
        ResultSet s = iTool.login(admin);

        List<User> list=new ArrayList<User>();
        while (s.next()){
            User a=new User();
            a.setUid(s.getInt("uid"));
            a.setUname(s.getString("uname"));
            a.setUpwd(s.getString("upwd"));
            list.add(a);
        }
        return list;
    }

    @Override
    public List<Fortran> fortran() throws Exception {
        ResultSet ft = iTool.fortran();

        List<Fortran> list=new ArrayList<Fortran>();
        while (ft.next()){
            Fortran fortran=new Fortran();
            fortran.setFtime(ft.getString("ftime"));

           fortran.setFcontext( ft.getString("fcontext"));
           list.add(fortran);
        }



        return list;
    }
}
