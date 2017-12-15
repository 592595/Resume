package com.example.nutzdemo.bean;
/*
对用户进行增删改查
 */
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends DBOper{
    //获取用户列表
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
    //根据用户名获取用户
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

//    //添加用户
//    public boolean addUser(User user){
//        boolean r = false;
//        String sql = "INSERT INTO user(username,pwd,role,regtime)VALUES(?,?,?,?) ";
//        try{
//            int num = this.executeUpdate(sql,new String[]{user.getUsername(),user.getpwd()});
//            if(num > 0){
//                r = true;
//            }
//        }catch(Exception e){
//            e.printStackTrace();
//        }finally{
//            this.closeAll();
//        }
//        return r;
//    }
//    //删除指定用户
//    public boolean delUser(String name){
//        boolean r = false;
//        String sql = "DELETE FROM user WHERE username = ?";
//        try{
//            int num = this.executeUpdate(sql,new String[]{name});
//            if(num > 0){
//                r = true;
//            }
//        }catch(Exception e){
//            e.printStackTrace();
//        }finally{
//            this.closeAll();
//        }
//        return r;
//    }
}