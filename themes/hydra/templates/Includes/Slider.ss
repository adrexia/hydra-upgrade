<% if CurrentSliderItems %>
	<div class="flexslider">
		<!-- Carousel items -->
		<ul class="slides unstyled">
			<% loop CurrentSliderItems %>
				<li class="<% if First %>flex-active-slide <% end_if %>item item-{$Modulus(5)}">
					<% if Link %><a href="$Link.Link"><% end_if %>
						<div class="image-wrap">
							<img src="$Image.URL" alt="$Title" />
						</div>
					<% if Link %>	</a><% end_if %>
					<% if $Caption || $Attribution %>
						<div class="caption">
							<% if $Attribution %>
								<small class="attribution"><em>Photo credit: $Attribution</em></small>
							<% end_if %>

							<% if Title %>
								<h4 class="sr-only">
								<% if Link %><a href="$Link.Link"><% end_if %>
								$Title
								<% if Link %>	</a><% end_if %>
								</h4>

							<% end_if %>
							<p>$Caption</p>
						</div>
					<% end_if %>
				</li>
			<% end_loop %>
		</ul>
	</div>
<% end_if %>
