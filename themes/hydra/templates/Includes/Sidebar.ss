<aside class="sidebar unit size1of4">
	<% if $GroupedGames.GroupedBy(getRoundTitle) %>
	<div class="ptxl">
		<h4 class="pvm">Roster of Games</h4>
		<% loop $GroupedGames.GroupedBy(getRoundTitle) %>
			<div class="pvs">
				<h5>$getRoundTitle()</h5>
				<ul class="unstyled">
					<% loop $Children %>
						<li><a href="$Top.GameListingPage.Link{$Link}">$Title</a></li>
					<% end_loop %>
				</ul>
			</div>
		<% end_loop %>
	</div>
	<% end_if %>
	<% if $Menu(2) %>
		<nav class="secondary">
			<% with $Level(1) %>
				<h3>
					$MenuTitle
				</h3>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
</aside>