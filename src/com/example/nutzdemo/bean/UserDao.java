package com.example.nutzdemo.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends DBOper{

    public List<User> getUser(){
        List<User>userList = new ArrayList<User>();
        User user = new User();
        String sql = "SELECT * FROM user";
        try{
            ResultSet rs = this.executeQuery(sql,null);
            while(rs.next()){
                user.setUsername(rs.getString("username"));
                user.setpwd(rs.getString("pwd"));
                userList.add(user);
            }

        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            this.closeAll();
        }
        return userList;
    }

    public User getUserByName(String name){
        User user = null;
        String sql = "SELECT * FROM user WHERE　username = ?";
        try{
            ResultSet rs = this.executeQuery(sql, new String[]{name});
            if(rs.next()){
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setpwd(rs.getString("pwd"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            this.closeAll();
        }
        return user;
    }
    public boolean editUser(User user){
        boolean r = false;
        String sql = "UPDATE user SET pwd = ? WHERE username = ?";
        try{
            int num = this.executeUpdate(sql, new String[]{user.getpwd(),user.getUsername()});
            if(num > 0){
                r = true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            this.closeAll();
        }
        return r;

    }

}