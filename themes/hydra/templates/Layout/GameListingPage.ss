<div class="typography row content">
	<section class="twelve columns">
		<article>
			<h2>$Title</h2>
			<div class="content">
				$Content
				<% if FilteredGames %>
					<div class="js-filters masonry-filters">
							<strong>Filter by: </strong>
							<a class="label metro rounded info success" data-filter="*">
								all
							</a>
							<% loop $getGroupedGames.GroupedBy(Genre) %>
								<% if $Genre %>
									<a class="label metro rounded info" data-filter=".$Genre.LimitWordCount(2, '').LowerCase">
										$Genre.LimitWordCount(2, '').LowerCase
									</a>
								<% end_if %>
							<% end_loop %>
							<% loop $getGroupedGames.GroupedBy(Session) %>
								<% if $Session %>
									<% if $Session ==0 %>
										<a class="label metro rounded info" data-filter="to-be-scheduled">
											to-be-scheduled
										</a>
									<% else %>
										<a class="label metro rounded info" data-filter=".round-{$Session}">
											round {$Session}
										</a>
									<% end_if %>
								<% end_if %>
							<% end_loop %>

					</div>
					<section class="masonry-items js-isotope">
					<% loop FilteredGames %>
						<article class="item $Restriction $Genre.LimitWordCount(2, '').LowerCase <% if $Session == 0 %>to-be-scheduled<% else %>round-{$Session}<% end_if %>">

							<div class="item-wrap alpha-change-border $Genre.LimitCharacters(1,'').LowerCase">
								<header>
									<h3 id="ID-{$ID}"><a href="$Top.GameListingPage.Link{$Link}">$Title</a></h3>
									<strong class="">run by <% if $FacilitatorText %>$FacilitatorText.LowerCase<% else_if MemberName %>$MemberName.LowerCase<% else %>hydra<% end_if %></strong>
								</header>
								<div class="text pvm">
									$Brief
								</div>
							</div>
						</article>
					<% end_loop %>
					</section>

					<% with FilteredGames %>
						<% include Pagination %>
					<% end_with %>
				<% else %>
					<div class="resultsHeader">
						<p class="pull-right">None</p>
					</div>

					<article class="">
						<p>No games</p>
					</article>
				<% end_if %>
				$Form
				$PageComments
			</div>
		</article>

	</section>
</div>