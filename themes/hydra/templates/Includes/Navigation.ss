<nav class="navbar metro rounded" id="nav1">
<div class="row">
	<a class="toggle" gumby-trigger="#nav1 > .row > ul" href="#"><i class="icon-menu"></i></a>
	<ul class="twelve columns">
		<% loop $Menu(1) %>
			<% if $ClassName==RegistrationPage %>
				<% if not $getCurrentRegistration %>
					<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
				<% end_if %>
			<% else_if $ClassName==GameSignupPage %>
				<% if $getCurrentRegistration %>
					<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
				<% end_if %>
			<% else %>
				<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
			<% end_if %>
		<% end_loop %>
	</ul>
	</div>
</nav>