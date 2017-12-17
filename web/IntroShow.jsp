<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/17
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.example.nutzdemo.bean.DBOper" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Intro</title>
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
    DBOper dbOper = new DBOper();
    dbOper.getConn("localhost", "resume", "root", "");
    String username = "panda";
    String sql1 = "SELECT * FROM intro WHERE username = ?";
    ResultSet rs1 = dbOper.executeQuery(sql1, new String[]{username});
%>
<div id="about">
    <div class="container content-lg">
        <div class="row">
            <div class="col-sm-3 sm-margin-b-30">
                <div class="text-right sm-text-left">
                    <h2 class="margin-b-0">Intro</h2>
                    <p>What I am all about.</p>
                </div>
            </div>
            <div class="col-sm-8 col-sm-offset-1">
                <div class="margin-b-60">
                    <%
                        while (rs1.next()) {
                    %>
                    <p>
                        <%
                            out.print(rs1.getString(2));
                        %>
                    </p>

                    <%
                        }
                    %>
                </div>

                <!-- Progress Box -->
                <div class="progress-box">
                    <h5>PHP <span class="color-heading pull-right">87%</span></h5>
                    <div class="progress">
                        <div class="progress-bar bg-color-base" role="progressbar" data-width="87"></div>
                    </div>
                </div>
                <div class="progress-box">
                    <h5>HTML5 <span class="color-heading pull-right">96%</span></h5>
                    <div class="progress">
                        <div class="progress-bar bg-color-base" role="progressbar" data-width="96"></div>
                    </div>
                </div>
                <div class="progress-box">
                    <h5>JavaSript <span class="color-heading pull-right">52%</span></h5>
                    <div class="progress">
                        <div class="progress-bar bg-color-base" role="progressbar" data-width="52"></div>
                    </div>
                </div>
                <div class="progress-box">
                    <h5>Photoshop <span class="color-heading pull-right">77%</span></h5>
                    <div class="progress">
                        <div class="progress-bar bg-color-base" role="progressbar" data-width="77"></div>
                    </div>
                </div>
                <!-- End Progress Box -->
            </div>
        </div>
        <!--// end row -->
    </div>
</div>
<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->
<script src="StaticResource/Vendor/jquery.min.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL PLUGINS -->
<script src="StaticResource/Vendor/jquery.easing.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/jquery.back-to-top.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/jquery.wow.min.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/jquery.parallax.min.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/jquery.appear.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
<script src="StaticResource/Vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL SCRIPTS -->
<script src="StaticResource/JS/layout.js" type="text/javascript"></script>
<script src="StaticResource/JS/components/progress-bar.min.js" type="text/javascript"></script>
<script src="StaticResource/JS/components/masonry.min.js" type="text/javascript"></script>
<script src="StaticResource/JS/components/wow.min.js" type="text/javascript"></script>

</body>
</html>
