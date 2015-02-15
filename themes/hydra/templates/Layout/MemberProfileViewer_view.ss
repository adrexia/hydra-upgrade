<% require css(memberprofiles/css/MemberProfileViewer.css) %>

<div class="typography row content">
	<section class="nine columns">
	<div class="content-container">
		<article>
			<h2>$Title</h2>
			<div class="content member-profile<% if IsSelf %> member-profile-self<% end_if %>">$Content

				<% if IsSelf %>
					<p class="message"><%t MemberProfiles.THISISYOURPROFILE 'This is your profile!' %> <a href="$Parent.Link"><%t MemberProfiles.EDITPROFILE 'Edit Profile' %></a></p>
				<% end_if %>
				<% loop Sections %>
					<div id="$ClassName" class="member-profile-section">
						<% if ShowTitle %><h3>$Title</h3><% end_if %>
						$Me
					</div>
				<% end_loop %>
				
				$Form
				
				$PageComments
			</div>
		</article>
	</div>
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