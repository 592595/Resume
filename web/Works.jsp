<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/10
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ page import="com.example.nutzdemo.bean.Contact" %>
<%@ page import="com.example.nutzdemo.bean.ContactDao" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Intro管理</title>
    <link rel="stylesheet" type="text/css" href="StaticResource/CSS/common.css"/>
    <link rel="stylesheet" type="text/css" href="StaticResource/CSS/main.css"/>
    <script type="text/javascript" src="StaticResource/JS/modernizr.min.js"></script>
</head>
<body>
<%
    ContactDao dao = new ContactDao();
    List<Contact> contactList = new ArrayList<Contact>();
    try {
        dao.getConn("localhost", "resume", "root", "");
    } catch (Exception e) {
        e.printStackTrace();
    }
    contactList = dao.getAllContact();
    if (contactList != null) {
        application.setAttribute("contactList", contactList);
    }
%>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="#" class="navbar-brand">后台管理</a></h1>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="Intro.jsp"><i class="icon-font">&#xe008;</i>Intro管理</a></li>
                        <li><a href="Contacts.jsp"><i class="icon-font">&#xe005;</i>Contactience管理</a></li>
                        <li><a href="Works.jsp"><i class="icon-font">&#xe006;</i>Works管理</a></li>
                        <li><a href="Contacts.jsp"><i class="icon-font">&#xe006;</i>Contacts管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp">首页</a><span
                    class="crumb-step">&gt;</span><a class="crumb-name" href="Contacts.jsp">Contacts管理</a>
            </div>
            <div class="result-wrap">
                <form id="myform">
                    <div class="result-content">
                        <table class="result-tab" width="50%" style="text-align: center">
                            <tr>
                                <th class="tc" width="10%"></th>
                                <th style="text-align: center">标签</th>
                                <th style="text-align: center">操作</th>
                            </tr>
                            <c:forEach var="contact" items="${contactList}">
                                <tr>
                                    <td class="tc"><input name="id[]" value="" type="checkbox"></td>
                                    <td>${contact.contactTitle}</td>  <!--标签ID-->
                                    <td>
                                        <a class="link-update" href="updateContacts.jsp?Contactid=${contact.contactid}">修改</a>
                                        <a class="link-del" href="#">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </form>
            </div>

        </div>
        <!--/main-->
    </div>
</div>
</body>
</html>

