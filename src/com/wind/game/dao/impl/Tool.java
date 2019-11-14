package com.wind.game.dao.impl;

import com.wind.game.dao.DateBase;
import com.wind.game.dao.ITool;
import com.wind.game.enity.User;

import java.sql.ResultSet;

/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:18:57
 *@description:
 *@Version:1.0
 */public class Tool extends DateBase implements ITool {
    @Override
    public ResultSet login(User admin) throws Exception {
        String sql="select * from user where uname=? and upwd=?";
        return super.quety(sql, new Object[]{admin.getUname(),admin.getUpwd()});
    }

    @Override
    public ResultSet fortran() throws Exception {
        String sql="SELECT * FROM `fortran` order by ftime desc";

        return super.quety(sql,new Object[]{});
    }
}
