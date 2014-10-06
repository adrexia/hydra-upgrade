<div class="typography row content">
	<section class="nine columns">

		<article>
			<h2>$Title</h2>
			<div class="content">
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