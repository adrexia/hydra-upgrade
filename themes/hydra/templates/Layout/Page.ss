<div class="typography row">
	<section class="nine columns">
	<% include Sidebar %>
	<div class="content-container">
		<article>
			<h2>$Title</h2>
			<div class="content">$Content</div>
		</article>
			$Form
			$PageComments
	</div>
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