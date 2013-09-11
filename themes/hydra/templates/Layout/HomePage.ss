<div class="content-container">
	<div class="typography row">
		<article class="twelve columns feature-group">
			<% include Slider %>
			<div class="content subhead">$Content</div>
		</article>
	</div>
	

	<div class="typography row">
		<section class="eight columns">
			<% if News %>
				<div class="resultsHeader">
					<h2><i class="icon-flag" aria-hidden="true"></i>News</h2>
					<p class="pull-right"><% with News %>$FirstItem - $LastItem of $count<% end_with %></p>
				</div>
			
				<% loop News %>
					<article class="$EvenOdd">
						<header>
							<h3 id="ID-{$ID}">$Title</h3>
						</header>
						<p class="meta-info">
							<% if Author %>by $Author<% end_if %>
						</p>
						<div class="text">
							$Content
						</div>
						<span class="label default">
							<time datetime="$LastEdited">$LastEdited.Format(d M Y)</time>
						</span>
						
					</article>
				<% end_loop %>

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
		<section class="three push_one columns">
		<% if News %>
			<div class="link-set">
					<h2><i class="icon-flag" aria-hidden="true"></i> Latest</h2>
					<ul>
						<% loop RecentNews %>
							<li class="$EvenOdd $FirstLast"><a href="#ID-{$ID}" class="$FirstLast">$Title</a></li>
						<% end_loop %>
					</ul>
				</div>
		<% end_if %>

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