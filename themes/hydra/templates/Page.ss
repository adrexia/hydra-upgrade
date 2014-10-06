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
	<link rel="stylesheet" href="$ThemeDir/js/libs/medium-editor/dist/css/medium-editor.css"> <!-- Core -->
	<link rel="stylesheet" href="$ThemeDir/js/libs/medium-editor/dist/css/themes/default.css"> <!-- or any other theme -->

</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>">
	<% include Header %>
	<div class="main" role="main">
			$Layout
	</div>
	<% include Footer %>

	<script src="$ThemeDir/js/libs/medium-editor/dist/js/medium-editor.js"></script>
	<script>
		var editor = new MediumEditor('.editable', {
			anchorInputPlaceholder: 'Type a link',
			buttons: ['bold', 'italic', 'quote', 'link', 'header1', 'header2'],
			cleanPastedHTML: true,
			diffLeft: 20,
			diffTop: 10,
			firstHeader: 'h3',
			secondHeader: 'h4'
		});

	</script>
	<script>
	$( "form" ).submit(function( event ) {
		var editable = S('.editable'),
			value = editable.html();
		editable.siblings('textarea').val(value);
	});
</script>
</body>
</html>