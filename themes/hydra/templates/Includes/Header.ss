<header class="header" role="banner">
	<div class="inner">
		<% include Navigation %>
		<% if $SearchForm %>
			<span class="search-dropdown-icon">L</span>
			<div class="search-bar">
				$SearchForm
			</div>
		<% end_if %>
	</div>
</header>