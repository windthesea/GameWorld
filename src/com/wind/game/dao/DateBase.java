package com.wind.game.dao;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:18:39
 *@description:
 *@Version:1.0
 */public class DateBase {
    public static DataSource ds;

    static {
        try {
            Properties ps = new Properties();
            InputStream is = DateBase.class.getClassLoader().getResourceAsStream("druid.properties");
            ps.load(is);
            ds = DruidDataSourceFactory.createDataSource(ps);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {


        return ds.getConnection();
    }

    public ResultSet quety(String sql, Object[] objects) throws SQLException {

        PreparedStatement ps = getConnection().prepareStatement(sql);

        if (objects!=null){
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i+1,objects[i]);
            }
        }

        return ps.executeQuery();
    }

    public int insert(String sql,Object[] obj)throws SQLException{
        PreparedStatement ps = getConnection().prepareStatement(sql);
        if(obj!=null) {
            for (int i = 0; i < obj.length; i++) {
                ps.setObject((i + 1), obj[i]);
            }
        }
        return ps.executeUpdate();
    }
}
