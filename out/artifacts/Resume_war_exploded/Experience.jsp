<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/10
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <li><a href="Experience.jsp"><i class="icon-font">&#xe005;</i>Experience管理</a></li>
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
                    class="crumb-step">&gt;</span><a class="crumb-name" href="Experience.jsp">Experience管理</a>
            </div>
            <div class="result-wrap">
                <div class="result-content">
                    <form action="ExperServlet" method="GET" id="myform" name="myform"
                          enctype="multipart/form-data">
                        <table class="insert-tab" width="100%">
                            <tbody>
                            <tr>

                                <th><i class="require-red">*</i>位置：</th>
                                <td>
                                    <input class="common-text required" name="Experid" size="50" value=""
                                           type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red"></i>标题：</th>
                                <td>
                                    <input class="common-text required" id="ExperTitle" name="ExperTitle" size="50"
                                           value=""
                                           type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>描述：</th>
                                <td><textarea class="common-textarea" id="ExperContent" name="ExperContent" cols="30"
                                              style="width: 50%;" rows="10"></textarea></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="发布" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>

        </div>
        <!--/main-->
    </div>
</div>
</body>
</html>
