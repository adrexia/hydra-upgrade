<% include Slider %>
<% include HeroUnit %>

$Form
$PageComments

<!-- Example row of columns -->
<h2 class="nonvisual-indicator">Features</h2>
<div class="row">
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
						<br />
						<span class="label metro rounded default $Author.LimitCharacters(1,'').LowerCase">
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
			
			<% with News %>
				<div class="row">
					<% include Pagination %>
				</div>
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
</div>
