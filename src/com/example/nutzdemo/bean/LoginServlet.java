package com.example.nutzdemo.bean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("GBK");
		response.setContentType("text/html;charset = GBK");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		DBOper db = new DBOper();
		db.getConn("localhost", "resume", "root", "");
		String sql = "SELECT username,pwd FROM user WHERE username = ? AND pwd = ?";
		ResultSet rs = db.executeQuery(sql,new String[]{username,pwd});
		try {
			if(rs != null && rs.next()){
				HttpSession session = request.getSession();
				session.setAttribute("username",username);
				Cookie cookie = new Cookie("username",username);
				cookie.setMaxAge(60*60*24*30);
				response.addCookie(cookie);
                request.getRequestDispatcher("/back.jsp").forward(request, response);
			}else{
                System.out.println("login fail!!");
				out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('很遗憾，用户名或密码错误');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void init()throws ServletException {

	}

}
