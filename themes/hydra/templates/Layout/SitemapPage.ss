<div class="typography row content">
	<section class="twelve columns">
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
							<% if not HomePage.ShowInMenus %>
								<% with HomePage %>
									<li data-pagetype="$ClassName" class="initial class-$ClassName">
									<% include SitemapNode %>
									</li>
								<% end_with %>
							<% end_if %>

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
</div>
