package com.wind.game.serivce;

import com.wind.game.enity.Fortran;
import com.wind.game.enity.User;

import java.util.List;

/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:19:03
 *@description:
 *@Version:1.0
 */public interface ToolSerivce {
     List<User> login(User admin)throws Exception;
     List<Fortran> fortran()throws Exception;
}
