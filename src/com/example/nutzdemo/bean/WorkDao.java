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
    public List<Work> getAllWork(){
        List<Work> workList = new ArrayList<Work>();
        String sql = "SELECT * FROM work";
        try {

            ResultSet rs = this.executeQuery(sql, null);
            while (rs.next()) {
                Work work = new Work();
                work.setusername(rs.getString("username"));
                work.setWorkid(rs.getString("Workid"));
                work.setWorkTitle(rs.getString("WorkTitle"));
                work.setWorkImagePath(rs.getString("WorkImagePath"));
                work.setWorkTime(rs.getString("WorkTime"));
                work.setWorkLocation(rs.getString("WorkWorkLocation"));
                work.setWorkContent(rs.getString("WorkWorkContent"));
                workList.add(work);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return workList;
    }

    public Work getWorkByid(String Workid) {
        Work work = null;
        String sql = "SELECT * FROM Work WHERE Workid = ?";
        try {
            ResultSet rs = this.executeQuery(sql, new String[]{Workid});
            if (rs.next()) {
                work = new Work();
                work.setusername(rs.getString("username"));
                work.setWorkid(rs.getString("Workid"));
                work.setWorkTitle(rs.getString("WorkTitle"));
                work.setWorkImagePath(rs.getString("WorkImagePath"));
                work.setWorkTime(rs.getString("WorkTime"));
                work.setWorkLocation(rs.getString("WorkWorkLocation"));
                work.setWorkContent(rs.getString("WorkWorkContent"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return work;
    }

    /**
     * 修改Work信息
     *
     * @param Work
     * @return
     */

    public boolean editWork(Work Work) {

        boolean r = false;
        String sql = "UPDATE Work SET WorkTitle = ?,WorkImage = ?,WorkTime=?,WorkLocation=?,WorkContent=? WHERE  Workid= ?";
        try {
            int num = this.executeUpdate(sql, new String[]{Work.getWorkTitle(), Work.getWorkImagePath(),Work.getWorkTime(),Work.getWorkLocation(), Work.getWorkContent(), Work.getWorkid()});
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