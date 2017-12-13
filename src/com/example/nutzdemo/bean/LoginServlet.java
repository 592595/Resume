package com.example.nutzdemo.bean;

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/resume";
		String user = "root";
		String password = "";
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		Connection conn = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			conn = (Connection)DriverManager.getConnection(url, user, password);
			String sql = "select * from User where username=? and pwd=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			PrintWriter out;
			if (rs.next()) {
				request.getRequestDispatcher("/back.jsp").forward(request, response);
			} else {
				System.out.println("login fail!!");
				out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('很遗憾，用户名或密码错误');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}

			ps.close();
		} catch (Exception var26) {
			var26.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException var25) {
					var25.printStackTrace();
				}
			}

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException var24) {
					var24.printStackTrace();
				}
			}

		}

		this.doGet(request, response);
	}
}
















