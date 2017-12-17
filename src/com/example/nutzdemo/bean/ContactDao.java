package com.example.nutzdemo.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContactDao extends DBOper {
    /**
     * 获取所有Intr
     *
     * @return
     */
    public List<Contact> getAllContact() {//把Msg改成Intro
        List<Contact> ContactList = new ArrayList<Contact>();
        String sql = "SELECT * FROM Contact";
        try {

            ResultSet rs = this.executeQuery(sql, null);
            while (rs.next()) {
                Contact Contact = new Contact();
                Contact.setusername(rs.getString("username"));
                Contact.setContactid(rs.getString("Contactid"));
                Contact.setContactTitle(rs.getString("ContactTitle"));
                Contact.setContactContent(rs.getString("ContactContent"));
                ContactList.add(Contact);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return ContactList;
    }

    public Contact getContactByid(String Contactid) {
        Contact Contact = null;
        String sql = "SELECT * FROM Contact WHERE username = ?";
        try {
            ResultSet rs = this.executeQuery(sql, new String[]{Contactid});
            if (rs.next()) {
                Contact = new Contact();
                Contact.setusername(rs.getString("username"));
                Contact.setContactid(rs.getString("Contactid"));
                Contact.setContactTitle(rs.getString("ContactTitle"));
                Contact.setContactContent(rs.getString("ContactContent"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Contact;
    }

    /**
     * 修改Intr信息
     *
     * @param Contact
     * @return
     */
    public boolean editContact(Contact Contact) {

        boolean r = false;
        String sql = "UPDATE Contact SET ContactTitle = ?,ContactContent=? WHERE  Contactid= ?";
        try {
            int num = this.executeUpdate(sql, new String[]{Contact.getContactTitle(), Contact.getContactContent(), Contact.getContactid()});
            System.out.println("num:" + num);
            //System.out.println(Contact.getContactContent());
            if (num > 0) {
                r = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }
}
