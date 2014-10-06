<footer class="row footer" role="contentinfo">
	<div class="navbar rounded">
		<% if SiteConfig.FooterLinks%>
		<ul>
			<% loop SiteConfig.FooterLinks %>
				<li><a href="$Link">$Name</a></li>
			<% end_loop %>
		</ul>
		<% end_if %>
	</div>
	<div class="columns six">
		<small class="right">&copy; NZLarps 2014 | Powered by <a href="http://silverstripe.org">SilverStripe</a></small>
		<p>&nbsp;</p>
	</div>
</footer>