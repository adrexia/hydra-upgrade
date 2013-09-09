<% if CurrentSliderItems %>
	<div class="flexslider">
		<!-- Carousel items -->
		<ul class="slides">
			<% loop CurrentSliderItems %>
				<li class="<% if First %>flex-active-slide <% end_if %>item">
					<% if Link %><a href="$Link.Link"><% end_if %>
						$Image
					<% if Link %>	</a><% end_if %>
					<% if Caption %>
						<div class="caption">
							<% if Title %>
								<h4>$Title</h4>
							<% end_if %>
							<p>$Caption</p>
						</div>
					<% end_if %>
				</li>
			<% end_loop %>
		</ul> 
	</div>
<% end_if %>