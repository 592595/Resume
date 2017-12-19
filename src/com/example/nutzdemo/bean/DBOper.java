package com.example.nutzdemo.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBOper {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Connection getConn(String server, String dbname, String dbuser, String dbpwd) {
        String DRIVER = "com.mysql.jdbc.Driver";
        String URL = "jdbc:mysql://" + server + ":3306/" + dbname + "?user=" + dbuser + "&password=" + dbpwd + "&useUnicode=true&characterEncoding=utf8";
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public void closeAll() {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

    }

    public ResultSet executeQuery(String preparedSql, String[] param) {
        try {
            ps = conn.prepareStatement(preparedSql);
            if (param != null) {
                for (int i = 0; i < param.length; i++) {
                    ps.setString(i + 1, param[i]);
                }
            }
            rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;

    }

    public int executeUpdate(String preparedSql, String[] param) {
        int num = 0;
        try {
            ps = conn.prepareStatement(preparedSql);
            if (param != null) {
                for (int i = 0; i < param.length; i++) {
                    ps.setString(i + 1, param[i]);
                }
            }
            num = ps.executeUpdate();
            System.out.println("数据表更新" + num + "条");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }
}
