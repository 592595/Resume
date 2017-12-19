package com.example.nutzdemo.bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/IntroServlet")
public class IntroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public IntroServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset = GBK");
        String username = "panda";
        String IntroContent = request.getParameter("IntroContent");
        PrintWriter out;
        //System.out.println(IntroContent);
        //System.out.println(username);
        Intro intro = new Intro();
        intro.setusername(username);
        intro.setIntroContent(IntroContent);
        //System.out.println(intro.getIntroContent());
        IntroDao dao = new IntroDao();
        dao.getConn("localhost", "resume", "root", "");
        if (dao.editIntr(intro)) {
            out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('Success');");
            out.println("window.location.href='back.jsp';");
            out.println("</script>");
            out.close();

        } else {
            out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('Fail');");
            out.println("window.location.href='back.jsp';");
            out.println("</script>");
            out.close();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}