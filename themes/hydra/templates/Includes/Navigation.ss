<nav class="navbar" id="nav1">
<div class="row">
	<a class="toggle" gumby-trigger="#nav1 > .row > ul" href="#"><i class="icon-menu"></i></a>
		
	<a href="$BaseHref" class="four columns logo" rel="home">$SiteConfig.Title</a>

	<ul class="eight columns">
		<% loop $Menu(1) %>
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
	</div>
</nav>