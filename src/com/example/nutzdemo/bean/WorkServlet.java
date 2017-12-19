package com.example.nutzdemo.bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/WorkServlet")
public class WorkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public WorkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = "panda";
        String Workid = request.getParameter("Workid");
        String WorkTitle = request.getParameter("WorkTitle");
        String WorkTime = request.getParameter("WorkTime");
        String WorkLocation = request.getParameter("WorkLocation");
        String WorkContent = request.getParameter("WorkContent");
        PrintWriter out;

        Work work=new Work();
        work.setusername(username);
        work.setWorkid(Workid);
        work.setWorkTitle(WorkTitle);
        work.setWorkTime(WorkTime);
        work.setWorkLocation(WorkLocation);
        work.setWorkContent(WorkContent);
        //System.out.println(intro.getIntroContent());
        WorkDao dao=new WorkDao();
        dao.getConn("localhost", "resume", "root", "");
        if (dao.editWork(work)) {
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


