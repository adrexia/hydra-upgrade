<% if $GroupedGames || $Menu(2) %>

<section class="three columns">
	<aside class="sidebar unit size1of4">
		<% if $GroupedGames.GroupedBy(getRoundTitle) %>
		<div>
			<h2 class="pbm">Roster of Games</h2>
			<% loop $GroupedGames.GroupedBy(getRoundTitle) %>
				<% if getRoundTitle() =="round-0" %><% else %>
					<div class="pvs">
						<h5><a href="{$Top.getGameListingPage().Link}#$getRoundTitle()">$Top.NiceString($getRoundTitle(), true)</a></h5>
						<ul class="unstyled">
							<% loop $Children %>
								<li><a href="$Link">$Title</a></li>
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
					<h3>
						$MenuTitle
					</h3>
					<ul>
						<% include SecondaryMenu %>
					</ul>
				<% end_with %>
			</nav>
		<% end_if %>
	</aside>
</section>

<% end_if %>
