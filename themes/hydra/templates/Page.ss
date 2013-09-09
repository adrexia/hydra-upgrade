<!doctype html>
<!--[if IE 6 ]><html class="no-js ie6 oldie" lang="$ContentLocale" id="ie6"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie7 oldie" lang="$ContentLocale" id="ie7"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie8 oldie" lang="$ContentLocale" id="ie8"><![endif]-->
<!--[if IE 9]>    <html class="no-js ie9" id="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="$ContentLocale"> <!--<![endif]-->

<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<% require themedCSS('gumby') %>
	<% require themedCSS('typography') %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	<script src="$ThemeDir/js/libs/modernizr-2.6.2.min.js"></script>

</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>">
	<% include Header %>
	<div class="main row" role="main">
		<div class="typography twelve columns">
			$Layout
		</div>
	</div>
	<% include Footer %>

	<script src="$ThemeDir/js/libs/jquery-1.10.1.min.js"></script>
	<script src="$ThemeDir/js/libs/gumby.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.retina.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.fixed.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.skiplink.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.toggleswitch.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.checkbox.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.radiobtn.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.tabs.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.navbar.js"></script>
	<script src="$ThemeDir/js/libs/ui/gumby.fittext.js"></script>
	<script src="$ThemeDir/js/libs/ui/jquery.validation.js"></script>
	<script src="$ThemeDir/js/libs/gumby.init.js"></script>
	
		
</body>
</html>