<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<div class="columns twelve">
			<div class="main typography results-list" role="main" id="main">
				<h1 class="page-header">$Title</h1>
					<div class="content">
						$Content
						<div class="row">
						<% if FilteredGames %>
							<div class="js-filters masonry-filters columns three">
								<h4 class="ptl">Filters </h4>
								<a class="label metro rounded default success" data-filter="*">
									all
								</a>
								<p></p>
								<% loop $getGroupedGames.GroupedBy(Session) %>
									<% if $Session %>
										<% if $Session ==0 %>
											<a class="label metro rounded default" data-filter="to-be-scheduled">
												to-be-scheduled
											</a>
										<% else %>
											<a class="label metro rounded default" data-filter=".round-{$Session}">
												round {$Session}
											</a>
										<% end_if %>
									<% end_if %>
								<% end_loop %>
								<p></p>
								<% if $getAllTags(true) %>
									<% loop $getAllTags(true) %>
										<% if $Title %>
										<a class="label metro rounded default" data-filter=".$Title">
											$Top.NiceString($Title)
										</a>
										<% end_if %>
									<% end_loop %>
								<% end_if %>


							</div>
							<section class="masonry-items js-isotope columns nine">
							<% loop FilteredGames %>
								<article class="item item-filter $Restriction $Genre <% if $Session == 0 %>to-be-scheduled<% else %>round-{$Session}<% end_if %>">

									<div class="item-wrap alpha-change-border $Genre.LimitCharacters(1,'').LowerCase">
										<header>
											<h3 id="ID-{$ID}"><a href="$Top.GameListingPage.Link{$URLSegment}">$Title</a></h3>
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
			</div>
			<footer class="content-footer columns twelve">
				<% include PrintShare %>
				<% include LastEdited %>
			</footer>
		</div>
	</div>
</div>
