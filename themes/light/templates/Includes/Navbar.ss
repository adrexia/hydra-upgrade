<nav id="navbar" class="row navbar" role="navigation">
	<a class="toggle" gumby-trigger=".navbar > ul" href="#" aria-owns="top-navigation" aria-controls="top-navigation" aria-expanded="false" role="button">
		<i class="icon-menu"></i>
	</a>
	<h2 class="nonvisual-indicator">Main navigation</h2>
	<ul class="nav twelve columns">
		<% loop Menu(1) %>
			<% if $ClassName==RegistrationPage %>
				<% if not $getCurrentRegistration %>
					<li class="$LinkingMode <% if $LinkingMode = current %> active<% end_if %>">
						<a href="$Link" title="$Title.XML" class="$LinkingMode">$MenuTitle.XML</a>
					</li>
				<% end_if %>
			<% else_if $ClassName==GameSignupPage %>
				<% if $getCurrentRegistration %>
					<li class="$LinkingMode <% if $LinkingMode = current %> active<% end_if %>">
						<a href="$Link" title="$Title.XML" class="$LinkingMode">$MenuTitle.XML</a>
					</li>
				<% end_if %>
			<% else %>
				<li class="$LinkingMode <% if $LinkingMode = current %> active<% end_if %>">
					<a href="$Link" title="$Title.XML" class="$LinkingMode">$MenuTitle.XML</a>
				</li>
			<% end_if %>
		<% end_loop %>
	</ul>
</nav>
