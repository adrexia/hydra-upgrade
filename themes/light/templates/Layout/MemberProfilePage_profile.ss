<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<% include Sidebar %>
		<div class="columns nine">
			<div class="main typography" role="main" id="main">
				<h1 class="page-header">$Title</h1>
				$Content.RichLinks
				<% if $CanAddMembers %>
				<h3><%t MemberProfiles.ADDMEMBER 'Add Member' %></h3>
				<p><%t MemberProfiles.ADDMEMBERLINK 'You can use this page to <a href="{addLink}">add a new member</a>.' addLink=$Link(add) %></p>

				<h3><%t MemberProfiles.YOURPROFILE 'Your Profile' %></h3>
				$Form
			<% else %>
				$Form
			<% end_if %>
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
