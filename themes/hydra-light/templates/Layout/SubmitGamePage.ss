<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<% include Sidebar %>
		<div class="columns nine">
			<div class="main typography" role="main" id="main">
				<h1 class="page-header">$Title</h1>
				<% if CurrentMember %>
					$Content
					<% if $SiteConfig.CurrentEvent %>
						<% if $Form %>
							$Form
						<% end_if %>
					<% else %>
						<p>There is no current event set to submit games to</p>
					<% end_if %>
					$PageComments
				<% else %>
					<% if $LoggedOutMessage %>
						$LoggedOutMessage
					<% else %>
					
					<p>Login or Register to submit a Larp</p>
					<% end_if %>
				<% end_if %>
			</div>
			<footer class="content-footer columns twelve">
				<% include PrintShare %>
				<% include LastEdited %>
			</footer>
		</div>
	</div>
</div>
