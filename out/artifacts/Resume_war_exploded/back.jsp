<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/10
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="StaticResource/CSS/common.css"/>
    <link rel="stylesheet" type="text/css" href="StaticResource/CSS/main.css"/>
    <script type="text/javascript" src="StaticResource/JS/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="back.jsp" class="navbar-brand">后台管理</a></h1>
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
                    <a href="back.jsp"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="Intro.jsp"><i class="icon-font">&#xe008;</i>Intro管理</a></li>
                        <li><a href="Experience.jsp"><i class="icon-font">&#xe005;</i>Experience管理</a></li>
                        <li><a href="updateWorks.jsp"><i class="icon-font">&#xe006;</i>Works管理</a></li>
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
                    class="crumb-step">&gt;</span><span class="crumb-name">分类管理</span></div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="50%" style="text-align: center">
                        <tr>
                            <th class="tc" width="10%"></th>
                            <th style="text-align: center">ID</th>
                            <th style="text-align: center">操作</th>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="" type="checkbox"></td>
                            <td>Intro</td>  <!--标签ID-->
                            <td>
                                <a class="link-update" href="Intro.jsp">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="" type="checkbox"></td>
                            <td>Experience</td>  <!--标签ID-->
                            <td>
                                <a class="link-update" href="Experience.jsp">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="" type="checkbox"></td>
                            <td>Works</td>  <!--标签ID-->
                            <td>
                                <a class="link-update" href="Works.jsp">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="" type="checkbox"></td>
                            <td>Contacts</td>  <!--标签ID-->
                            <td>
                                <a class="link-update" href="Contacts.jsp">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
