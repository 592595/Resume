<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/10
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Simple Login Form</title>
    <meta charset="UTF-8"/>
    <meta name="Designer" content="PremiumPixels.com">
    <meta name="Author" content="$hekh@r d-Ziner, CSSJUNTION.com">
    <link rel="stylesheet" type="text/css" href="StaticResource/CSS/reset.css">
    <link rel="stylesheet" type="text/css" href="StaticResource/CSS/structure.css">
</head>

<body>
<form class="box login">
    <fieldset class="boxBody">
        <label>Username</label>
        <input type="text" tabindex="1" placeholder="PremiumPixel" required>
        <label><a href="#" class="rLink" tabindex="5">Forget your password?</a>Password</label>
        <input type="password" tabindex="2" required>
    </fieldset>
    <footer>
        <label><input type="checkbox" tabindex="3">Keep me logged in</label>
        <input type="submit" class="btnLogin" value="Login" tabindex="4">
        <a href="back.jsp">denglu</a>
    </footer>
</form>
</body>
</html>

