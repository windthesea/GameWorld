package com.wind.game.enity;

/*
 *since JDK1.8
 *@Author: Wind-White
 *@date:9:46
 *@description:
 *@Version:1.0
 */public class User {
     private int uid;
     private String uname;
    private String upwd;
    private int status;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
