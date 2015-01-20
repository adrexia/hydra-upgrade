<div class="typography row">
	<article class="twelve columns feature-group">
		<% include Slider %>
		<div class="content subhead">$Content</div>
		<div class="divider"></div>
	</article>
</div>


<div class="typography row content">
	<section class="twelve columns">
		<% if News %>
			<div class="resultsHeader">
				<h2>News</h2>
			</div>
			<section class="pagination-content">
			<% loop News %>
				<article class="$EvenOdd row $FirstLast">
					<p class="meta-info two columns">
						<em>
							<time datetime="$Created">$Created.Format(d M Y)</time>
						</em>
						<span class="label metro rounded alpha-change $Author.LimitCharacters(1,'').LowerCase">
						<% if Author %>by $Author.LowerCase<% else %>by admin<% end_if %>
						</span>

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
			<div class="row">
				<div class="columns ten push_two">
				<% with News %>
					<% include Pagination %>
				<% end_with %>
				</div>
			</div>
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

</div>