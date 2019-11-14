package com.wind.game.dao;

import com.wind.game.enity.Fortran;
import com.wind.game.enity.User;

import java.sql.ResultSet;

/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:18:56
 *@description:
 *@Version:1.0
 */public interface ITool {
     ResultSet login(User admin)throws Exception;
     ResultSet fortran()throws Exception;
}
