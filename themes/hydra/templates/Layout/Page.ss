<div class="typography row content">
	<section class="nine columns">
		<article>
			<h2>$Title</h2>
			<div class="content">
				$Content
				<div class="ptl">
					$Form
				</div>
				$PageComments
			</div>
		</article>
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