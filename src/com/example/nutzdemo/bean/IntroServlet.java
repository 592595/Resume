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

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IntroServlet() {
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
        String IntroContent = request.getParameter("IntroContent");
        PrintWriter out = response.getWriter();
        //System.out.println(IntroContent);
        //System.out.println(username);
        Intro intro = new Intro();
        intro.setusername(username);
        intro.setIntroContent(IntroContent);
        //System.out.println(intro.getIntroContent());
        IntroDao dao = new IntroDao();
        dao.getConn("localhost", "resume", "root", "");
        if (dao.editIntr(intro)) {
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