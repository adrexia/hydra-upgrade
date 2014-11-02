<!doctype html>
<!--[if IE 6 ]><html class="no-js ie6 oldie gumby-no-touch" lang="$ContentLocale" id="ie6"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie7 oldie gumby-no-touch" lang="$ContentLocale" id="ie7"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie8 oldie gumby-no-touch" lang="$ContentLocale" id="ie8"><![endif]-->
<!--[if IE 9]><html class="no-js ie9 gumby-no-touch" id="ie9" lang="en"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js gumby-no-touch" lang="$ContentLocale"><!--<![endif]-->
<head>
	<% base_tag %>
	<%-- $FilterDescription adds additional information from the news and events areas --%>
	<title>$Title <% if FilterDescription %>- $FilterDescription<% end_if %> | $SiteConfig.Title</title>
	
	$MetaTags(false)
	<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements. It must be included _before_ the body element -->
	<!--[if lt IE 9]>
		<script src="$ThemeDir/js/libs/html5shiv-printshiv.js"></script>
	<![endif]-->
	<!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->

	<% require themedCSS('style') %>
	<% include MetaIcons %>
</head>

<body data-spy="scroll" class="$ClassName">
	<% include SkipLinks %>
	<div class="row">
		<div class="twelve columns">
			<% include Header %>
			<div class="layout" id="layout">
				$Layout
			</div>
			<% include Footer %>
		</div>
	</div>

	<script type="text/javascript" src="{$ThemeDir}/js/script.js"></script>

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
	
	<% if SiteConfig.AddThisProfileID %>
		<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=$SiteConfig.AddThisProfileID"></script>
	<% end_if %>


</body>
</html>
