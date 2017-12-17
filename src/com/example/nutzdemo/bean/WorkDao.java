package com.example.nutzdemo.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WorkDao extends DBOper {
    /**
     * 获取所有Intr
     *
     * @return
     */
    public List<Work> getAllWork() {
        List<Work> WorkList = new ArrayList<Work>();
        String sql = "SELECT * FROM Work";
        try {

            ResultSet rs = this.executeQuery(sql, null);
            while (rs.next()) {
                Work Work = new Work();
                Work.setusername(rs.getString("username"));
                Work.setWorkid(rs.getString("Workid"));
                Work.setWorkTitle(rs.getString("WorkTitle"));
                Work.setWorkContent(rs.getString("WorkContent"));
                WorkList.add(Work);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return WorkList;
    }

    public Work getWorkByid(String Workid) {
        Work Work = null;
        String sql = "SELECT * FROM Work WHERE Workid = ?";
        try {
            ResultSet rs = this.executeQuery(sql, new String[]{Workid});
            if (rs.next()) {
                Work = new Work();
                Work.setusername(rs.getString("username"));
                Work.setWorkid(rs.getString("Workid"));
                Work.setWorkTitle(rs.getString("WorkTitle"));
                Work.setWorkContent(rs.getString("WorkContent"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Work;
    }

    /**
     * 修改Intr信息
     *
     * @param Work
     * @return
     */
    public boolean editWork(Work Work) {

        boolean r = false;
        String sql = "UPDATE Work SET WorkTitle = ?,WorkContent=? WHERE  Workid= ?";
        try {
            int num = this.executeUpdate(sql, new String[]{Work.getWorkTitle(), Work.getWorkContent(), Work.getWorkid()});
            System.out.println("num:" + num);
            //System.out.println(Work.getWorkContent());
            if (num > 0) {
                r = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }
}