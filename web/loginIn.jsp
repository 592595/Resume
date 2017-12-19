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
<form class="box login" action="LoginServlet" method="post">
    <fieldset class="boxBody">
        <label>用户名</label>
        <input type="text" tabindex="1" id="username" name="username" required>
        <label><a href="#" class="rLink" tabindex="5">忘记密码</a>密码</label>
        <input type="password" tabindex="2" id="pwd" name="pwd" required>
    </fieldset>
    <footer>
        <label><input type="checkbox" tabindex="3">Keep me logged in</label>
        <input type="submit" class="btnLogin" value="Login" tabindex="4"/>
    </footer>
</form>
</body>
</html>

