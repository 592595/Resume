<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/17
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ page import="com.example.nutzdemo.bean.Contact" %>
<%@ page import="com.example.nutzdemo.bean.ContactDao" %>
<html>
<head>
    <title>Contact</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="StaticResource/Vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css"/>
    <link href="StaticResource/Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="StaticResource/CSS/animate.css" rel="stylesheet">

    <link href="StaticResource/CSS/layout.min.css" rel="stylesheet" type="text/css"/>

    <link rel="shortcut icon" href="favicon.ico"/>
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
<div id="contact">
    <div class="bg-color-sky-light">
        <div class="container content-lg">
            <div class="row">
                <div class="col-sm-3 sm-margin-b-30">
                    <div class="text-right sm-text-left">
                        <h2 class="margin-b-0">Contacts</h2>
                        <p>Hire me.</p>
                    </div>
                </div>
                <div class="col-sm-8 col-sm-offset-1">
                    <div class="row">
                        <c:forEach var="contact" items="${contactList}">
                            <div class="col-md-3 col-xs-6 md-margin-b-30">
                                <h5>${contact.contactTitle}</h5>
                                <a href="#">${contact.contactContent}</a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
