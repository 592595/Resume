package com.example.nutzdemo.bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/editContactServlet")
public class editContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public editContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset = GBK");
        String username = "panda";
        String Contactid = request.getParameter("Contactid");
        String ContactTitle = request.getParameter("ContactTitle");
        String ContactContent = request.getParameter("ContactContent");
        PrintWriter out;
        System.out.println(ContactContent);

        Contact contact = new Contact();
        contact.setusername(username);
        contact.setContactid(Contactid);
        contact.setContactTitle(ContactTitle);
        contact.setContactContent(ContactContent);

        ContactDao dao = new ContactDao();
        dao.getConn("localhost", "resume", "root", "");
        if (dao.editContact(contact)) {
            System.out.println(ContactContent);
            out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('Success');");
            out.println("window.location.href='back.jsp';");
            out.println("</script>");
            out.close();
        } else {
            //System.out.println(username);
            out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('Success');");
            out.println("window.location.href='back.jsp';");
            out.println("</script>");
            out.close();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
