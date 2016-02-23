<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<% include Sidebar %>
		<div class="columns twelve">
			<div class="main typography" role="main" id="main">
				<h1 class="page-header">$Title</h1>
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
				$Form
				<% include RelatedPages %>
				$PageComments
			</div>
			<footer class="content-footer columns twelve">
				<% include PrintShare %>
				<% include LastEdited %>
			</footer>
		</div>
	</div>
</div>
