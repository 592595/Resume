package com.example.nutzdemo.bean;

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

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class LoginServlet
 */
//如果在web.xml中声明过servlet 就把这一句注释掉
//@WebServlet("/LoginServlet")
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		//mysql数据库驱动
		String driver = "com.mysql.jdbc.Driver";
		//链接数据库的url test为数据库名
		String url = "jdbc:mysql://localhost:3306//mytest";
		//数据库用户
		String user = "root";
		//数据库密码
		String password = "root";

		//从前台读取到的用户名
		String username = request.getParameter("username");
		//从前台读取到的密码
		String pwd = request.getParameter("pwd");

		//数据库链接成功时返回的实例
		Connection conn = null;
		//查询成功时返回的记录集
		ResultSet rs = null;
		try{
			//加载驱动
			Class.forName(driver);
			//获取链接
			conn = (Connection) DriverManager.getConnection(url, user, password);
			//准备sql查询
			String sql = "select * from user where username=? and pwd=?";
			//使用PreparedStatement，可以防止sql注入
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, pwd);
			//执行查询,返回记录集
			rs = ps.executeQuery();
			System.out.println(rs);
			//如果查询到用户名和密码，则允许用户登录
			if (rs.next()){
				System.out.println("login ok!!");
				PrintWriter out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('恭喜，登录成功');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}else{
				System.out.println("login fail!!");
				PrintWriter out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('很遗憾，用户名或密码错误');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
			//关闭PreparedStatement
			ps.close();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//最后一定要关闭链接
			if (conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(rs != null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		doGet(request, response);
	}

}















