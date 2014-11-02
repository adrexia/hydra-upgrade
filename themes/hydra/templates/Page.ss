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
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	<link rel="stylesheet" href="$ThemeDir/js/src/libs/medium-editor/dist/css/medium-editor.css"> <!-- Core -->
	<link rel="stylesheet" href="$ThemeDir/js/src/libs/medium-editor/dist/css/themes/default.css"> <!-- or any other theme -->

</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>">
	<% include Header %>
	<div class="main" role="main">
			$Layout
	</div>
	<% include Footer %>

	<script type="text/javascript" src="{$ThemeDir}/js/script.min.js"></script>

	<% if SiteConfig.GACode %>
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', '$SiteConfig.GACode', 'auto');
			ga('send', 'pageview');
		</script>
	<% end_if %>
</body>
</html>