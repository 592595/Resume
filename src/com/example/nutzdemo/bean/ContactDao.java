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
    public List<Contact> getAllContact() {
        List<Contact> contactList = new ArrayList<Contact>();
        String sql = "SELECT * FROM contact";
        try {

            ResultSet rs = this.executeQuery(sql, null);
            while (rs.next()) {
                Contact contact = new Contact();
                contact.setusername(rs.getString("username"));
                contact.setContactid(rs.getString("Contactid"));
                contact.setContactTitle(rs.getString("ContactTitle"));
                contact.setContactContent(rs.getString("ContactContent"));
                contactList.add(contact);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.closeAll();
        }
        return contactList;
    }

    public Contact getContactByid(String Contactid) {
        Contact Contact = null;
        String sql = "SELECT * FROM contact WHERE Contactid = ?";
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
     * @param contact
     * @return
     */
    public boolean editContact(Contact contact) {

        boolean r = false;
        String sql = "UPDATE contact SET ContactTitle = ?,ContactContent=? WHERE  Contactid= ?";
        try {
            int num = this.executeUpdate(sql, new String[]{contact.getContactTitle(), contact.getContactContent(), contact.getContactid()});
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
