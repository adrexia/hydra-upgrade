<div class="typography row content">
	<section class="nine columns">
		<article>
			<h2>$Title</h2>
			<div class="content">
				$Content
				<% if IFrameURL %>
					<span id="Iframepage-loading" style="display: none;">
						<%t IframePage.Loading "Loading content..." %>
					</span>
					<div class="nonvisual-indicator" style="position: absolute; overflow: hidden; clip: rect(0 0 0 0); height: 1px; width: 1px; margin: -1px; padding: 0; border: 0;">
						<%t IframePage.ExternalNote "Please note the following section of content is possibly being delivered from an external source (IFRAME in HTML terms), and may present unusual experiences for screen readers." %>
					</div>
					<iframe id="Iframepage-iframe" style="$Style" src="$IFrameURL" class="$Class">$AlternateContent</iframe>
				<% end_if %>
				$BottomContent
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