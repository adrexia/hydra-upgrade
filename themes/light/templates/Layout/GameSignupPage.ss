<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<% include Sidebar %>

		<section class="nine columns">
			<article class="main typography" role="main" id="main">
				<h2>$Title</h2>
				<div class="content">
					$Content
					<div class="ptl">
						<% if userGameRegOpen %>
						<% if Form %>
								$GameLiveContent
							<% end_if %>
						<div class="key">
							<h3>Key:</h3>
							<dl>
								<% if not $SubmittedGames %>
									<dt><i title="accepted" class="icon icon-up hide-chosen"></i></dt>
									<dd>Move straight to top</dd>
								<% end_if %>
								<dt><i title="favourited" class="icon icon-heart"></i></dt>
								<dd>The game I most want to play</dd>
								<% if $SubmittedGames %>
									<dt><i title="accepted" class="icon icon-check hide-chosing"></i></dt>
									<dd>I am in this game <small>(may not be final)</small></dd>
								<% end_if %>
							</dl>
						</div>
						<% end_if %>
						$Form
					</div>
					<% if $SubmittedGames %>
						<% if $getGroupedPlayerGames.GroupedBy(Session) %>

						<table class="striped preference-table">
							<tbody>
								<% loop $getGroupedPlayerGames.GroupedBy(Session) %>
									<tr>
										<th>Round&nbsp;$Session</th>
										<td>
										<% loop $Children %>
											{$Preference}.
											<a href="$Game.Link">$Game.Title</a><% if $Favourite %><i title="favourited" class="icon icon-heart"></i><% end_if %><% if $Status %><i title="accepted" class="icon icon-check"></i><% end_if %> <br />
										<% end_loop %>
										</td>
									</tr>
								<% end_loop %>
							</tbody>
						</table>
						<% end_if %>
					<% end_if %>
					$PageComments
				</div>
			</article>
		</section>
	</div>
</div>
