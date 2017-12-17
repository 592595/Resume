<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/17
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import = "java.util.List" %>
<%@page import = "java.util.ArrayList" %>
<%@ page import="com.example.nutzdemo.bean.Exper" %>
<%@ page import="com.example.nutzdemo.bean.ExperDao" %>
<html>
<head>
    <title>Experience</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="StaticResource/Vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css"/>
    <link href="StaticResource/Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="StaticResource/CSS/animate.css" rel="stylesheet">

    <!-- THEME STYLES -->
    <link href="StaticResource/CSS/layout.min.css" rel="stylesheet" type="text/css"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<body>
<%
    ExperDao dao = new ExperDao();
    List<Exper> experList = new ArrayList<Exper>();
    try {
        dao.getConn("localhost", "resume", "root", "");
    }catch (Exception e){
        e.printStackTrace();
    }
    experList=dao.getAllExper();
    if(experList!=null){
        application.setAttribute("experList",experList);
    }
%>
<div id="experience">
    <div class="bg-color-sky-light" data-auto-height="true">
        <div class="container content-lg">
            <div class="row">
                <div class="col-sm-3 sm-margin-b-30">
                    <div class="text-right sm-text-left">
                        <h2 class="margin-b-0">Experience</h2>
                        <p>Batman would be jealous.</p>
                    </div>
                </div>

                <div class="col-sm-8 col-sm-offset-1">
                    <div class="row row-space-2 margin-b-4">
                        <c:forEach var="exper" items="${experList}" varStatus="status">
                            <%--${status.count }--%>
                            <div class="col-md-4 md-margin-b-4">
                                <div class="service" data-height="height">
                                    <div class="service-element">
                                        <i class="service-icon icon-chemistry"></i>
                                    </div>
                                    <div class="service-info">
                                        <h3>${exper.experTitle}</h3>
                                        <p class="margin-b-5">${exper.experContent}</p>
                                    </div>
                                    <a href="#" class="content-wrapper-link"></a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!--// end row -->
                </div>
            </div>
            <!--// end row -->
        </div>
    </div>
</div>
</body>
</html>
