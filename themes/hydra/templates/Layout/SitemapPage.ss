
<div class="typography row">
	<section class="nine columns">

	<div class="content-container">
		<article>
			<h2>$Title</h2>
			<div class="content">$Content
				<ul class="sitemap">
					<% if SelectedPage %>
						<% loop SelectedPage.Children %>
						<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
						<% include SitemapNode %>
						</li>
						<% end_loop %>
					<% else %>
						<% loop Menu(1) %>
						<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
						<% include SitemapNode %>
						</li>
						<% end_loop %>
					<% end_if %>
				</ul>
		
				$Form
				$PageComments
			</div>
		</article>
	</div>
	</section>
			<section class="three columns">
				<% include Sidebar %>
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
