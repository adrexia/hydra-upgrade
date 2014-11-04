<section class="three columns">
	<aside class="sidebar unit size1of4">
		<% if $GroupedGames.GroupedBy(getRoundTitle) %>
		<div class="ptxl">
			<h2 class="pvm">Roster of Games</h2>
			<% loop $GroupedGames.GroupedBy(getRoundTitle) %>
				<% if getRoundTitle() =="Round 0" %><% else %>
					<div class="pvs">
						<h3> $getRoundTitle() </h3>
						<ul class="unstyled">
							<% loop $Children %>
								<li><a href="$Top.GameListingPage.Link{$Link}">$Title</a></li>
							<% end_loop %>
						</ul>
					</div>
				<% end_if %>
			<% end_loop %>
		</div>
		<% end_if %>
		<% if $Menu(2) %>
			<nav class="secondary">
				<% with $Level(1) %>
					<ul>
						<% include SecondaryMenu %>
					</ul>
				<% end_with %>
			</nav>
		<% end_if %>
	</aside>
</section>