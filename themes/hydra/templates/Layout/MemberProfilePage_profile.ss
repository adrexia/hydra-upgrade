<div class="typography row">
	<section class="nine columns">
	<div class="content-container">
		<article>
			<h2>$Title</h2>
			<div class="content">$Content
		
			<% if $CanAddMembers %>
				<h3><%t MemberProfiles.ADDMEMBER 'Add Member' %></h3>
				<p><%t MemberProfiles.ADDMEMBERLINK 'You can use this page to <a href="{addLink}">add a new member</a>.' addLink=$Link(add) %></p>

				<h3><%t MemberProfiles.YOURPROFILE 'Your Profile' %></h3>
				$Form
			<% else %>
				$Form
			<% end_if %>
			$PageComments
			</div>
		</article>
	</div>
	</section>
			<section class="three columns">
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