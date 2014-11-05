<div class="typography row content">
	<section class="nine columns">
		<article>
			<h2>$Title</h2>
			<div class="content">
				$Content
				<% if Games %>
					<section class="pagination-content">
					<% loop Games %>
						<article class="$EvenOdd row $FirstLast">
							<div class="columns twelve">
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

					<% with Games %>
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
	<section class="three columns">
		<% include Sidebar %>
	</section>
</div>