<footer class="row footer" role="contentinfo">
	<div class="navbar rounded">
		<% if SiteConfig.FooterLinks%>
		<ul>
			<% loop SiteConfig.FooterLinks %>
				<li><a href="$Link">$Name</a></li>
			<% end_loop %>
		</ul>
		<% end_if %>
		<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
		
			<% if SiteConfig.TwitterUsername %>
				<a class="meta-data pts pull-right" href="http://www.twitter.com/$SiteConfig.TwitterUsername"><i class="icon-twitter icon-dark" aria-hidden="true"></i><span class="nonvisual-indicator">Follow us on Twitter</span></a>
			<% end_if %>
			<% if SiteConfig.FacebookURL %>
				<a class="meta-data pts pull-right" href="http://www.facebook.com/$SiteConfig.FacebookURL"><i class="icon-facebook icon-dark" aria-hidden="true"></i><span class="nonvisual-indicator">Join us on Facebook</span></a>
			<% end_if %>
		
		<% end_if %>
	</div>
	</div>
	<div class="columns six">
		<small class="right">&copy; NZLarps 2014 | Powered by <a href="http://silverstripe.org">SilverStripe</a></small>
		<p>&nbsp;</p>
	</div>
</footer>