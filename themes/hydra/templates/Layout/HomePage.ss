<div class="content-container">
	<div class="typography row">
		<article class="twelve columns feature-group">
			<% include Slider %>
			<div class="content subhead">$Content</div>
			<div class="divider">
				<i class="icon-infinity"></i>
			</div>
		</article>
	</div>
	

	<div class="typography row">
		<section class="nine columns">
			<% if News %>
				<div class="resultsHeader">
					<h2>News</h2>
				</div>
				<section class="pagination-content">
				<% loop News %>
					<article class="$EvenOdd row">
						<p class="meta-info two columns">
							<span class="label default"><% if Author %>by $Author<% end_if %></span>
							<em>
								<time datetime="$LastEdited">$LastEdited.Format(d M Y)</time>
							</em>
						</p>
						<div class="columns ten">
							<header>
								<h3 id="ID-{$ID}">$Title</h3>
							</header>
							<div class="text">
								$Content
							</div>
						</div>
						
						
					</article>
				<% end_loop %>
				</section>
				<span> <i class='pagination-indicator icon-arrows-ccw'></i></span>

				<% with News %>
					<% include Pagination %>
				<% end_with %>
			<% else %>
				<div class="resultsHeader">
					<h2 class="pull-left">News</h2>
					<p class="pull-right">None</p>
				</div>

				<article class="">
					<p>No news</p>
				</article>
			<% end_if %>

			$Form
			$PageComments
		</section>
		<section class="three columns">
		 <% if Quicklinks %>
			<div class="link-set">
				<h2><i class="icon-link" aria-hidden="true"></i> Links</h2>
				<ul>
					<% loop Quicklinks %>
						<li class="$EvenOdd $FirstLast"><a href="$Link" class="$FirstLast">$Name</a></li>
					<% end_loop %>
				</ul>
			</div>
			<% end_if %>

		</section>
	</div>
</div>