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

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExperServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset = GBK");
        String username = "panda";
        String Experid = request.getParameter("Experid");
        String ExperTitle = request.getParameter("ExperTitle");
        String ExperContent = request.getParameter("ExperContent");
        PrintWriter out = response.getWriter();
        System.out.println(ExperContent);

        Exper exper = new Exper();
        exper.setusername(username);
        exper.setExperid(Experid);
        exper.setExperTitle(ExperTitle);
        exper.setExperContent(ExperContent);

        ExperDao dao = new ExperDao();
        dao.getConn("localhost", "resume", "root", "");
        if (dao.editExper(exper)) {
            out.println("success");
            out.println("<br><a href = 'back.jsp'>返回</a></br>");
        } else {
            out.println("fail");
            out.println("<br><a href = 'Intro.jsp'>重新修改</a></br>");
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

    }
}
