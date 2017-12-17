<%--
  Created by IntelliJ IDEA.
  User: Pandade
  Date: 2017/12/10
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;chars1et=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- BEGIN HEAD -->
<head>
    <meta chars1et="utf-8"/>
    <title>Home</title>
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

    <script language="javascript">
        //输入你希望根据页面高度自动调整高度的iframe的名称的列表
        //用逗号把每个iframe的ID分隔. 例如: ["myframe1", "myframe2"]，可以只有一个窗体，则不用逗号。
        //定义iframe的ID
        var iframeids=["about","experience","contact"];
        //如果用户的浏览器不支持iframe是否将iframe隐藏 yes 表示隐藏，no表示不隐藏
        var iframehide="yes";
        function dyniframesize()
        {
            var dyniframe=new Array()
            for (i=0; i<iframeids.length; i++)
            {
                if (document.getElementById)
                {
//自动调整iframe高度
                    dyniframe[dyniframe.length] = document.getElementById(iframeids[i]);
                    if (dyniframe[i] && !window.opera)
                    {
                        dyniframe[i].style.display="block";
                        if (dyniframe[i].contentDocument && dyniframe[i].contentDocument.body.offsetHeight) //如果用户的浏览器是NetScape
                            dyniframe[i].height = dyniframe[i].contentDocument.body.offsetHeight;
                        else if (dyniframe[i].Document && dyniframe[i].Document.body.scrollHeight) //如果用户的浏览器是IE
                            dyniframe[i].height = dyniframe[i].Document.body.scrollHeight;
                    }
                }
//根据设定的参数来处理不支持iframe的浏览器的显示问题
                if ((document.all || document.getElementById) && iframehide=="no")
                {
                    var tempobj=document.all? document.all[iframeids[i]] : document.getElementById(iframeids[i]);
                    tempobj.style.display="block";
                }
            }
        }
        if (window.addEventListener)
            window.addEventListener("load", dyniframesize, false);
        else if (window.attachEvent)
            window.attachEvent("onload", dyniframesize);
        else
            window.onload=dyniframesize;
    </script>
</head>
<!-- END HEAD -->

<!-- BODY -->
<body id="body" data-spy="scroll" data-target=".header">
<!--========== HEADER ==========-->
<header class="header navbar-fixed-top">
    <!-- Navbar -->
    <nav class="navbar" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="menu-container js_nav-item">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon"></span>
                </button>

                <!-- Logo -->
                <div class="logo">
                    <a class="logo-wrap" href="loginIn.jsp">
                        <img class="logo-img logo-img-main" src="StaticResource/Image/logo.png" alt="Asentus Logo">
                        <img class="logo-img logo-img-active" src="StaticResource/Image/logo-dark.png"
                             alt="Asentus Logo">
                    </a>
                </div>
                <!-- End Logo -->
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
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
            <!-- End Navbar Collapse -->
        </div>
    </nav>
    <!-- Navbar -->
</header>
<!--========== END HEADER ==========-->

<!--========== SLIDER ==========-->
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
        <!--// end row -->
    </div>
</div>
<!--========== SLIDER ==========-->

<!--========== PAGE LAYOUT ==========-->
<!-- About -->
<iframe id="about" src="IntroShow.jsp" width="100%" name="Contact"
        scrolling="no" frameborder="0" seamless ></iframe>
<!-- End About -->

<!-- Experience -->
<iframe id="experience" src="ExperienceShow.jsp" width="100%" name="Contact"
        scrolling="no" frameborder="0" seamless ></iframe>
<!-- End Experience -->

<!-- Work -->
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
                <!-- Masonry Grid -->
                <div class="masonry-grid row row-space-2">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8 margin-b-4">
                        <!-- Work -->
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/800x400/01.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">
                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">Art Of Coding</h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                                    non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                    laborum.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
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
                                                <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                        <!-- Work -->
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x400/01.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">
                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">Art Of Coding</h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                                    non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                    laborum.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
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
                                                <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                        <!-- Work -->
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x300/01.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">
                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">Art Of Coding</h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                                    non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                    laborum.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
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
                                                <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                        <!-- Work -->
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x300/02.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">
                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">Art Of Coding</h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                                    non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                    laborum.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
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
                                                <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                        <!-- Work -->
                        <div class="work work-popup-trigger">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="StaticResource/Image/397x300/03.jpg"
                                     alt="Portfolio Image">
                            </div>
                            <div class="work-popup-overlay">
                                <div class="work-popup-content">
                                    <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                    <div class="margin-b-30">
                                        <h3 class="margin-b-5">Art Of Coding</h3>
                                        <span>Clean &amp; Minimalistic Design</span>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                            <div class="margin-t-10 sm-margin-t-0">
                                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                                    non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                    laborum.</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
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
                                                <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Work -->
                    </div>
                </div>
                <!-- End Masonry Grid -->
            </div>
        </div>
        <!--// end row -->
    </div>
</div>
<!-- End Work -->

<!-- Contact -->
<iframe id="contact" src="ContactShow.jsp" width="100%" name="Contact"
        scrolling="no" frameborder="0" seamless ></iframe>
<!-- End Contact -->
<!--========== END PAGE LAYOUT ==========-->

<!--========== FOOTER ==========-->
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
        <!--// end row -->
    </div>
</footer>
<!--========== END FOOTER ==========-->

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
<!-- END BODY -->
</html>
