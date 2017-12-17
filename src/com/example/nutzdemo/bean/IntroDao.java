package com.example.nutzdemo.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IntroDao extends DBOper {
    /**
     * 获取所有Intr
     *
     * @return
     */
    public List<Intro> getAllIntro() {
        List<Intro> introList = new ArrayList<Intro>();
        String sql = "SELECT * FROM intro";
        try {
            ResultSet rs = this.executeQuery(sql, null);
            while (rs.next()) {
                Intro Intr = new Intro();
                Intr.setusername(rs.getString("username"));
                Intr.setIntroContent(rs.getString("IntroContent"));
                introList.add(Intr);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return introList;
    }

    public Intro getIntroByname(String username) {
        Intro Intr = null;
        String sql = "SELECT * FROM Intro WHERE username = ?";
        try {
            ResultSet rs = this.executeQuery(sql, new String[]{username});
            if (rs.next()) {
                Intr = new Intro();
                Intr.setusername(rs.getString("username"));
                Intr.setIntroContent(rs.getString("IntroContent"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Intr;
    }

    /**
     * 修改Intr信息
     *
     * @param Intr
     * @return
     */
    public boolean editIntr(Intro Intr) {

        boolean r = false;
        String sql = "UPDATE intro SET IntroContent = ? WHERE username = ?";
        try {
            int num = this.executeUpdate(sql, new String[]{Intr.getIntroContent(), Intr.getusername()});
            System.out.println(Intr.getusername());
            //System.out.println(Intr.getIntroContent());
            System.out.println("num:" + num);
            if (num > 0) {
                r = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }

}
