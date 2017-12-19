package com.example.nutzdemo.bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ExperServlet")
public class ExperServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ExperServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset = GBK");
        String username = "panda";
        String Experid = request.getParameter("Experid");
        String ExperTitle = request.getParameter("ExperTitle");
        String ExperContent = request.getParameter("ExperContent");
        PrintWriter out;
        System.out.println(ExperContent);

        Exper exper = new Exper();
        exper.setusername(username);
        exper.setExperid(Experid);
        exper.setExperTitle(ExperTitle);
        exper.setExperContent(ExperContent);

        ExperDao dao = new ExperDao();
        dao.getConn("localhost", "resume", "root", "");
        if (dao.editExper(exper)) {
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
            out.println("alert('Success');");
            out.println("window.location.href='back.jsp';");
            out.println("</script>");
            out.close();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
