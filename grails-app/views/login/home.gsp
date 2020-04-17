%{--
<%--
  Created by IntelliJ IDEA.
  User: prashant
  Date: 7/6/16
  Time: 12:39 PM
--%>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Grayscale - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <asset:stylesheet src="bootstrap.min.css"/>

    <!-- Custom CSS -->
    <asset:stylesheet src="grayscale.css"/>

    <!-- Custom Fonts -->
    <asset:stylesheet src="font-awesome.min.css" />
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

<!-- Navigation -->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top">
                <i class="fa fa-play-circle"></i>  <span class="light">Start</span> Bootstrap
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="#about">About</a>
                </li>
                <li>
                    <a class="page-scroll" href="#download">Download</a>
                </li>
                <li>
                    <a class="page-scroll" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Intro Header -->
<header class="intro">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h1 class="brand-heading">Grayscale</h1>
                    <p class="intro-text">A free, responsive, one page Bootstrap theme.<br>Created by Start Bootstrap.</p>
                    <a href="#about" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- About Section -->
<section id="about" class="container content-section text-center">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <h2>About Grayscale</h2>
            <p>Grayscale is a free Bootstrap 3 theme created by Start Bootstrap. It can be yours right now, simply download the template on <a href="http://startbootstrap.com/template-overviews/grayscale/">the preview page</a>. The theme is open source, and you can use it for any purpose, personal or commercial.</p>
            <p>This theme features stock photos by <a href="http://gratisography.com/">Gratisography</a> along with a custom Google Maps skin courtesy of <a href="http://snazzymaps.com/">Snazzy Maps</a>.</p>
            <p>Grayscale includes full HTML, CSS, and custom JavaScript files along with LESS files for easy customization.</p>
        </div>
    </div>
</section>

<!-- Download Section -->
<section id="download" class="content-section text-center">
    <div class="download-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Download Grayscale</h2>
                <p>You can download Grayscale for free on the preview page at Start Bootstrap.</p>
                <a href="http://startbootstrap.com/template-overviews/grayscale/" class="btn btn-default btn-lg">Visit Download Page</a>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section -->
<section id="contact" class="container content-section text-center">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <h2>Contact Start Bootstrap</h2>
            <p>Feel free to email us to provide some feedback on our templates, give us suggestions for new templates and themes, or to just say hello!</p>
            <p><a href="mailto:feedback@startbootstrap.com">feedback@startbootstrap.com</a>
            </p>
            <ul class="list-inline banner-social-buttons">
                <li>
                    <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                </li>
                <li>
                    <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                </li>
                <li>
                    <a href="https://plus.google.com/+Startbootstrap/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                </li>
            </ul>
        </div>
    </div>
</section>

<!-- Map Section -->
<div id="map"></div>

<!-- Footer -->
<footer>
    <div class="container text-center">
        <p>Copyright &copy; Your Website 2014</p>
    </div>
</footer>

<!-- jQuery -->
<asset:javascript src="jquery.js"/>

<!-- Bootstrap Core JavaScript -->
<asset:javascript src="bootstrap.min.js"/>

<!-- Plugin JavaScript -->
<asset:javascript src="jquery.easing.min.js"/>

<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

<!-- Custom Theme JavaScript -->
<asset:javascript src="grayscale.js"/>

</body>

</html>--}%
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <asset:stylesheet src="bootstrap.min.css"/>

    <asset:stylesheet src="datepicker3.css"/>
    <asset:stylesheet src="style.css"/>

    <!--Icons-->
    <asset:javascript src="lumino.glyphs.js"/>

    <!--[if lt IE 9]>

    <asset:javascript src="respond.min.js"/>
    <![endif]-->

</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="col-md-6"><a class="navbar-brand" href="#"><span>MIXPANEL</span></a></div>

            <div class="col-md-6">
                <div class="col-md-12"><div class="col-md-12"></div>

                    <div class="col-md-12"></div>

                    <div class="col-md-12"></div>

                    <div class="col-md-12"></div>

                    <div class="col-md-12"></div>

                    <div class="col-md-12"></div>

                    <div class="col-md-12"></div>

                    <div class="form-group pull-right">
                        <input type="text" class="form-control home-search" placeholder="Search">
                    </div>
                </div></div>

        </div>

    </div><!-- /.container-fluid -->
</nav>


<div class="col-sm-12  col-lg-12 main">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"></h1>
        </div>
    </div><!--/.row-->


    <div class="row">

        %{--<div class="col-md-7">--}%
            %{--<div class="panel panel-primary">--}%
                %{--<div class="panel-heading">--}%
                    %{--Recent Shares--}%
                %{--</div>--}%

                %{--<div class="panel-body">--}%
                    %{--<g:render template="/template/post"></g:render>--}%
                    %{--<g:render template="/template/post"></g:render>--}%

                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Login
                </div>

                <div class="panel-body">
                    <div class="col-xs-10 col-xs-offset-1">
                        <div class="login-panel panel panel-default">

                            <g:if test="${flash.message}">
                                <div class="message" style="display: block">${flash.message}</div>
                            </g:if>
                            <div class="panel-body">
                                <form role="form" action='${postUrl}' method='POST'>
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="E-mail" name='j_username'
                                                   autofocus="">
                                        </div>

                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password" name='j_password'
                                                   value="" type="password">
                                        </div>

                                        <input class="btn btn-primary" type="submit" value="Sign in"/>

                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div></div>
            </div>
        </div>
    <div class="col-md-3"></div>
    </div>
    <div class="row">
        %{--<div class="col-md-7">--}%
            %{--<div class="panel panel-primary">--}%
                %{--<div class="panel-heading">--}%
                    %{--<div class="row">--}%
                        %{--<div class="col-md-8">Top Posts</div>--}%
                        %{--<div class="col-md-4">--}%
                            %{--<div class="col-md-12"></div>--}%
                            %{--<div class="col-md-12"></div>--}%
                            %{--<div class="col-md-12"></div>--}%
                            %{--<select class="form-control">--}%
                                %{--<option>Today</option>--}%
                                %{--<option>1 Week</option>--}%
                                %{--<option>1 Month</option>--}%
                                %{--<option>1 Year</option>--}%
                            %{--</select></div>--}%
                    %{--</div>--}%
                %{--</div>--}%
                %{--<div class="panel-body">--}%
                    %{--<g:render template="/template/post"></g:render>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Register
                </div>

                <div class="panel-body">
                    <div class="col-xs-10 col-xs-offset-1">
                        <div class="login-panel panel panel-default">
                            <div class="panel-body">

                                <g:if test="${flash.error}">
                                    <div class="alert alert-error" style="display: block">${flash.error}</div>
                                </g:if>
                                <g:form role="form" name="myForm" controller="login" action="saveSignUpData" enctype="multipart/form-data"
                                        method='POST'>
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="First Name" name='firstname'
                                                   autofocus="" >


                                        </div>

                                        <div class="form-group">
                                            <input class="form-control" placeholder="Last Name" name='lastname'
                                                   autofocus="" >
                                        </div>

                                        <div class="form-group">
                                            <input class="form-control" placeholder="E-mail" name='username' autofocus=""
                                                   type="email">
                                        </div>

                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password" name='password'
                                                   type="password">
                                        </div>

                                        <div class="form-group">
                                            <input class="form-control" placeholder="Confirm Password"
                                                   name='comfirmpassword' value="" type="password">
                                        </div>


                                        <input class="btn btn-primary" type="submit" value="Sign Up"/>
                                    </fieldset>
                                </g:form>
                            </div>
                        </div>
                    </div></div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>    <!--/.main-->

<asset:javascript src="jquery-1.11.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="chart.min.js"/>
<asset:javascript src="chart-data.js"/>
<asset:javascript src="easypiechart.js"/>
<asset:javascript src="easypiechart-data.js"/>
<asset:javascript src="bootstrap-datepicker.js"/>
<script>
    $('#calendar').datepicker({});

    !function ($) {
        $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
            $(this).find('em:first').toggleClass("glyphicon-minus");
        });
        $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
    }(window.jQuery);

    $(window).on('resize', function () {
        if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
    })
    $(window).on('resize', function () {
        if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
    })
</script>
</body>

</html>