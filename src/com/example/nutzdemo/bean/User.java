package com.example.nutzdemo.bean;
/*
* 对user进行数据的封装
* */
public class User {

    private String username;
    private String pwd;
    private String Intro;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getpwd() {
        return pwd;
    }
    public void setpwd(String pwd) {
        this.pwd = pwd;
    }
    public String getIntro(){
        return Intro;
    }
    public void setIntro(String Intro){
        this.Intro=Intro;
    }

}
