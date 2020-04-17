%{--<!DOCTYPE html>--}%
%{--<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->--}%
%{--<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->--}%
%{--<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->--}%
%{--<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->--}%
%{--<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->--}%
	%{--<head>--}%
		%{--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--}%
		%{--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">--}%
		%{--<title><g:layoutTitle default="Grails"/></title>--}%
		%{--<meta name="viewport" content="width=device-width, initial-scale=1.0">--}%
		%{--<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">--}%
		%{--<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">--}%
		%{--<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">--}%
  		%{--<asset:stylesheet src="application.css"/>--}%
		%{--<asset:javascript src="application.js"/>--}%
		%{--<g:layoutHead/>--}%
	%{--</head>--}%
	%{--<body>--}%
		%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>--}%
		%{--<g:layoutBody/>--}%
		%{--<div class="footer" role="contentinfo"></div>--}%
		%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--}%
	%{--</body>--}%
%{--</html>--}%



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard</title>
	<asset:stylesheet src="bootstrap.min.css"/>

	%{--<asset:stylesheet src="datepicker3.css" />--}%
	<asset:stylesheet src="style.css"/>

	<!--Icons-->
	<asset:javascript src="lumino.glyphs.js"/>

	<!--[if lt IE 9]>

	<asset:javascript src="respond.min.js"/>
	<![endif]-->
	<style>

	.stroked-white{
		color: white;
	}
	</style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- start Mixpanel --><script type="text/javascript">(function(e,a){if(!a.__SV){var b=window;try{var c,l,i,j=b.location,g=j.hash;c=function(a,b){return(l=a.match(RegExp(b+"=([^&]*)")))?l[1]:null};g&&c(g,"state")&&(i=JSON.parse(decodeURIComponent(c(g,"state"))),"mpeditor"===i.action&&(b.sessionStorage.setItem("_mpcehash",g),history.replaceState(i.desiredHash||"",e.title,j.pathname+j.search)))}catch(m){}var k,h;window.mixpanel=a;a._i=[];a.init=function(b,c,f){function e(b,a){var c=a.split(".");2==c.length&&(b=b[c[0]],a=c[1]);b[a]=function(){b.push([a].concat(Array.prototype.slice.call(arguments,
        0)))}}var d=a;"undefined"!==typeof f?d=a[f]=[]:f="mixpanel";d.people=d.people||[];d.toString=function(b){var a="mixpanel";"mixpanel"!==f&&(a+="."+f);b||(a+=" (stub)");return a};d.people.toString=function(){return d.toString(1)+".people (stub)"};k="disable time_event track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config reset people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
    for(h=0;h<k.length;h++)e(d,k[h]);a._i.push([b,c,f])};a.__SV=1.2;b=e.createElement("script");b.type="text/javascript";b.async=!0;b.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"file:"===e.location.protocol&&"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js".match(/^\/\//)?"https://cdn.mxpnl.com/libs/mixpanel-2-latest.min.js":"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";c=e.getElementsByTagName("script")[0];c.parentNode.insertBefore(b,c)}})(document,window.mixpanel||[]);
mixpanel.init("3253cc0c06750f432a4d7902994875fa");</script><!-- end Mixpanel -->
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<div class="col-md-7">
				<a class="navbar-brand" href="#"><span>MixPanel </span></a>
			</div>
			<div class="col-md-2">
				<div class="col-md-12"></div><div class="col-md-12"></div><div class="col-md-12"></div><div class="col-md-12"></div><div class="col-md-12"></div>
			</div>
			<div class="col-md-3">
				<ul class="user-menu">


					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>  <sec:ifNotLoggedIn>  User </sec:ifNotLoggedIn><sec:ifLoggedIn> <sec:loggedInUserInfo field="username"/></sec:ifLoggedIn> <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
							<sec:ifNotLoggedIn>   <li><a href="${createLink(controller: 'login')}"><svg class="glyph stroked cancel"><use xlink:href="#stroked-checkmark"></use></svg> Login</a></li></sec:ifNotLoggedIn>

							<sec:ifLoggedIn>   <li><a href="${createLink(controller: 'logout')}"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li></sec:ifLoggedIn>

						</ul>
					</li>
				</ul></div>
		</div>

	</div><!-- /.container-fluid -->
</nav>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
	<form role="search">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Search">
		</div>
	</form>
	<ul class="nav menu">
		<li class="active"><a href="${createLink(controller: 'mixPanel', action: "dashboard")}"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
		<li><a href="${createLink(controller: 'mixPanel', action: "page1")}"><svg class="glyph stroked calendar"><use xlink:href=""></use></svg> MixPanel Page 1</a></li>
		<li><a href="${createLink(controller: 'mixPanel', action: "page2")}"><svg class="glyph stroked calendar"><use xlink:href="${createLink(controller: 'mixPanel', action: "page2")}"></use></svg> MixPanel Page 2</a></li>

		</ul>

</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">


	<g:layoutBody/>



</div>	<!--/.main-->

<asset:javascript  src="jquery-1.11.1.min.js"/>
<asset:javascript  src="bootstrap.min.js"/>
<asset:javascript  src="chart.min.js"/>
%{--<asset:javascript  src="chart-data.js"/>--}%
<asset:javascript  src="easypiechart.js"/>
%{--<asset:javascript  src="easypiechart-data.js"/>--}%
<asset:javascript  src="bootstrap-datepicker.js"/>
<script>

	!function ($) {
		$(document).on("click","ul.nav li.parent > a > span.icon", function(){
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
<script>
    mixpanel.identify("${user?.id}");
    mixpanel.people.set({
        "$first_name": "${user?.firstname}",
        "$last_name": "${user?.lastname}",
        "$email": "${user?.username}"
    });
</script>
</body>

</html>