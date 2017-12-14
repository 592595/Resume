package com.example.nutzdemo.bean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class AddUserServlet
 */
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
        doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset = GBK");
        PrintWriter out = response.getWriter();
        String username = "pandade";
        String Intro = request.getParameter("Intro");
        UserDao dao = new UserDao();
        User user =dao.getUserByName(username);
        user.setIntro(Intro);
        dao.getConn("localhost", "resume", "root", "");
        if(dao.editIntro(user)){
            out.print("success！");
        }
        else{
            out.print("fail！");
        }
    }

}
















