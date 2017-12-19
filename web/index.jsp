<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/10
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;chars1et=UTF-8" language="java" %>
<%@page import="com.example.nutzdemo.bean.DBOper" %>
<%@ page import="java.sql.ResultSet" %>
<!doctype html>
<html>
<head>
    <meta chars1et="utf-8"/>
    <title>Home</title>
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
    <script language="javascript">
        var iframeids = ["about", "experience", "contact"];
        var iframehide = "yes";

        function dyniframesize() {
            var dyniframe = new Array()
            for (i = 0; i < iframeids.length; i++) {
                if (document.getElementById) {
                    dyniframe[dyniframe.length] = document.getElementById(iframeids[i]);
                    if (dyniframe[i] && !window.opera) {
                        dyniframe[i].style.display = "block";
                        if (dyniframe[i].contentDocument && dyniframe[i].contentDocument.body.offsetHeight) //如果用户的浏览器是NetScape
                            dyniframe[i].height = dyniframe[i].contentDocument.body.offsetHeight;
                        else if (dyniframe[i].Document && dyniframe[i].Document.body.scrollHeight) //如果用户的浏览器是IE
                            dyniframe[i].height = dyniframe[i].Document.body.scrollHeight;
                    }
                }
                if ((document.all || document.getElementById) && iframehide == "no") {
                    var tempobj = document.all ? document.all[iframeids[i]] : document.getElementById(iframeids[i]);
                    tempobj.style.display = "block";
                }
            }
        }

        if (window.addEventListener)
            window.addEventListener("load", dyniframesize, false);
        else if (window.attachEvent)
            window.attachEvent("onload", dyniframesize);
        else
            window.onload = dyniframesize;
    </script>
</head>

<body id="body" data-spy="scroll" data-target=".header">
<%
    DBOper dbOper = new DBOper();
    dbOper.getConn("localhost", "resume", "root", "");
    String username = "panda";
    String sql1 = "SELECT * FROM Work WHERE username = ?";
    ResultSet rs1 = dbOper.executeQuery(sql1, new String[]{username});
    int row = 0;
%>
<header class="header navbar-fixed-top">
    <nav class="navbar" role="navigation">
        <div class="container">
            <div class="menu-container js_nav-item">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon"></span>
                </button>
                <div class="logo">
                    <a class="logo-wrap" href="loginIn.jsp">
                        <img class="logo-img logo-img-main" src="StaticResource/Image/logo.png" alt="Asentus Logo">
                        <img class="logo-img logo-img-active" src="StaticResource/Image/logo-dark.png"
                             alt="Asentus Logo">
                    </a>
                </div>
            </div>

            <div class="collapse navbar-collapse nav-collapse">
                <div class="menu-container">
                    <ul class="nav navbar-nav navbar-nav-right">
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">Home</a>
                        </li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover"
                                                            href="#about">About</a></li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#experience">Experience</a>
                        </li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">Work</a>
                        </li>
                        <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>
<div class="promo-block parallax-window" data-parallax="scroll" data-image-src="StaticResource/Image/1920x1080/01.jpg">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="promo-block-divider">
                    <h1 class="promo-block-title">Alex <br/> Teseira</h1>
                    <p class="promo-block-text">Web Designer &amp; Front-end Developer</p>
                </div>
                <ul class="list-inline">
                    <li><a href="#" class="social-icons"><i class="icon-social-facebook"></i></a></li>
                    <li><a href="#" class="social-icons"><i class="icon-social-twitter"></i></a></li>
                    <li><a href="#" class="social-icons"><i class="icon-social-dribbble"></i></a></li>
                    <li><a href="#" class="social-icons"><i class="icon-social-behance"></i></a></li>
                    <li><a href="#" class="social-icons"><i class="icon-social-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<iframe id="about" src="IntroShow.jsp" width="100%" name="Contact"
        scrolling="no" frameborder="0" seamless></iframe>

<iframe id="experience" src="ExperienceShow.jsp" width="100%" name="Contact"
        scrolling="no" frameborder="0" seamless></iframe>

<div id="work">
    <div class="container content-lg">
        <div class="row">
            <div class="col-sm-3 sm-margin-b-30">
                <div class="text-right sm-text-left">
                    <h2 class="margin-b-0">Works</h2>
                    <p>I build the real value.</p>
                </div>
            </div>
            <div class="col-sm-8 col-sm-offset-1">
                <div class="masonry-grid row row-space-2">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/800x400/01.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">
                                    <%
                                        while (rs1.next()) {
                                    %>
                                    <%
                                        if (row + 1 == 1) {
                                    %>
                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">
                                            <%
                                                out.println(rs1.getObject("WorkTitle"));
                                            %>
                                        </h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>
                                                    <%
                                                        out.println(rs1.getObject("WorkContent"));
                                                    %>
                                                </p>
                                                <ul class="list-inline work-popup-tag">
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Design,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Coding,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Portfolio</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p class="margin-b-5"><strong>Project Leader:</strong>
                                                    <%
                                                        out.println(rs1.getObject("username"));
                                                    %>
                                                </p>
                                                <p class="margin-b-5"><strong>Location:</strong>
                                                    <%
                                                        out.println(rs1.getObject("WorkLocation"));
                                                    %>
                                                </p>
                                                <p class="margin-b-5"><strong>Time:</strong>
                                                    <%
                                                        out.println(rs1.getObject("WorkTime"));
                                                    %>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                            }
                                            row++;
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x300/02.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">

                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">
                                            15621
                                        </h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>
                                                    25919
                                                </p>
                                                <ul class="list-inline work-popup-tag">
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Design,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Coding,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Portfolio</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p class="margin-b-5"><strong>Project Leader:</strong>
                                                    5555
                                                </p>
                                                <p class="margin-b-5"><strong>Location:</strong>
                                                    5+95
                                                </p>
                                                <p class="margin-b-5"><strong>Time:</strong>
                                                    4984
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x300/03.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">

                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">
                                            15621
                                        </h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>
                                                    25919
                                                </p>
                                                <ul class="list-inline work-popup-tag">
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Design,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Coding,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Portfolio</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p class="margin-b-5"><strong>Project Leader:</strong>
                                                    5555
                                                </p>
                                                <p class="margin-b-5"><strong>Location:</strong>
                                                    5+95
                                                </p>
                                                <p class="margin-b-5"><strong>Time:</strong>
                                                    4984
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x400/01.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">

                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">
                                            15621
                                        </h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>
                                                    25919
                                                </p>
                                                <ul class="list-inline work-popup-tag">
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Design,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Coding,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Portfolio</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p class="margin-b-5"><strong>Project Leader:</strong>
                                                    5555
                                                </p>
                                                <p class="margin-b-5"><strong>Location:</strong>
                                                    5+95
                                                </p>
                                                <p class="margin-b-5"><strong>Time:</strong>
                                                    4984
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x300/01.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">

                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">
                                            15621
                                        </h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>
                                                    25919
                                                </p>
                                                <ul class="list-inline work-popup-tag">
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Design,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Coding,</a></li>
                                                    <li class="work-popup-tag-item"><a class="work-popup-tag-link"
                                                                                       href="#">Portfolio</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p class="margin-b-5"><strong>Project Leader:</strong>
                                                    5555
                                                </p>
                                                <p class="margin-b-5"><strong>Location:</strong>
                                                    5+95
                                                </p>
                                                <p class="margin-b-5"><strong>Time:</strong>
                                                    4984
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <iframe id="contact" src="ContactShow.jsp" width="100%" name="Contact"
            scrolling="no" frameborder="0" seamless></iframe>

    <footer class="footer">
        <div class="content container">
            <div class="row">
                <div class="col-xs-6">
                    <img class="footer-logo" src="StaticResource/Image/logo-dark.png" alt="Aircv Logo">
                </div>
                <div class="col-xs-6 text-right sm-text-left">
                    <p class="margin-b-0">Copyright &copy; 2017.Company name All rights reserved.<a target="_blank"
                                                                                                    href="http://sc.chinaz.com/moban/"></a>
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

    <script src="StaticResource/Vendor/jquery.min.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <script src="StaticResource/Vendor/jquery.easing.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/jquery.back-to-top.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/jquery.wow.min.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/jquery.parallax.min.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/jquery.appear.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
    <script src="StaticResource/Vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

    <script src="StaticResource/JS/layout.js" type="text/javascript"></script>
    <script src="StaticResource/JS/components/progress-bar.min.js" type="text/javascript"></script>
    <script src="StaticResource/JS/components/masonry.min.js" type="text/javascript"></script>
    <script src="StaticResource/JS/components/wow.min.js" type="text/javascript"></script>

</body>
</html>
