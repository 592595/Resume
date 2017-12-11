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
//�����web.xml��������servlet �Ͱ���һ��ע�͵�
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

		//mysql���ݿ�����
		String driver = "com.mysql.jdbc.Driver";
		//�������ݿ��url testΪ���ݿ���
		String url = "jdbc:mysql://localhost:3306//mytest";
		//���ݿ��û�
		String user = "root";
		//���ݿ�����
		String password = "root";

		//��ǰ̨��ȡ�����û���
		String username = request.getParameter("username");
		//��ǰ̨��ȡ��������
		String pwd = request.getParameter("pwd");

		//���ݿ����ӳɹ�ʱ���ص�ʵ��
		Connection conn = null;
		//��ѯ�ɹ�ʱ���صļ�¼��
		ResultSet rs = null;
		try{
			//��������
			Class.forName(driver);
			//��ȡ����
			conn = (Connection) DriverManager.getConnection(url, user, password);
			//׼��sql��ѯ
			String sql = "select * from user where username=? and pwd=?";
			//ʹ��PreparedStatement�����Է�ֹsqlע��
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, pwd);
			//ִ�в�ѯ,���ؼ�¼��
			rs = ps.executeQuery();
			System.out.println(rs);
			//�����ѯ���û��������룬�������û���¼
			if (rs.next()){
				System.out.println("login ok!!");
				PrintWriter out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('��ϲ����¼�ɹ�');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}else{
				System.out.println("login fail!!");
				PrintWriter out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('���ź����û������������');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
			//�ر�PreparedStatement
			ps.close();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//���һ��Ҫ�ر�����
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















