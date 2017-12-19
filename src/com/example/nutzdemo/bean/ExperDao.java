package com.example.nutzdemo.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ExperDao extends DBOper {
    public List<Exper> getAllExper() {//把Msg改成Intro
        List<Exper> experList = new ArrayList<Exper>();
        String sql = "SELECT * FROM exper";
        try {

            ResultSet rs = this.executeQuery(sql, null);
            while (rs.next()) {
                Exper exper = new Exper();
                exper.setusername(rs.getString("username"));
                exper.setExperid(rs.getString("Experid"));
                exper.setExperTitle(rs.getString("ExperTitle"));
                exper.setExperContent(rs.getString("ExperContent"));
                experList.add(exper);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return experList;
    }

    public Exper getExperByid(String Experid) {
        Exper exper = null;
        String sql = "SELECT * FROM Exper WHERE username = ?";
        try {
            ResultSet rs = this.executeQuery(sql, new String[]{Experid});
            if (rs.next()) {
                exper = new Exper();
                exper.setusername(rs.getString("username"));
                exper.setExperid(rs.getString("Experid"));
                exper.setExperTitle(rs.getString("ExperTitle"));
                exper.setExperContent(rs.getString("ExperContent"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return exper;
    }


    public boolean editExper(Exper exper) {

        boolean r = false;
        String sql = "UPDATE exper SET ExperTitle = ?,ExperContent=? WHERE  Experid= ?";
        try {
            int num = this.executeUpdate(sql, new String[]{exper.getExperTitle(), exper.getExperContent(), exper.getExperid()});
            System.out.println("num:" + num);
            //System.out.println(exper.getExperContent());
            if (num > 0) {
                r = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }

}
