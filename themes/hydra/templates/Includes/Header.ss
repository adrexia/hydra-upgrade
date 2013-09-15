<div class="divider"></div>
<header class="header" role="banner">
	<div class="inner">
		<div class="row">
			<div class="twelve columns">
					<section class="brand-group row">
						<h1 class="eight columns">
							<a href="$BaseHref" class="logo" rel="home">$SiteConfig.Title</a>
						</h1>
						<div class="btn-login four columns">
							<% if $CurrentMember %>
								<p class="meta-data">Logged in as <a href="$MemberProfilePage.Link">$CurrentMember.FirstName</a></p>
							<% end_if %>
							<button class="btn medium success metro rounded login pretty pull_right">
								<% if not $CurrentMember %>
									<a href="{$BaseHref}Security/login">Login</a>|
									<a href="$MemberProfilePage.Link">Create Account</a>
								<% else %>
									<a href="{$BaseHref}Security/logout">Log out</a>
								<% end_if %>
							</button>
						</div>
					</section>
			</div>
		</div>
		<div class="row">
			<% include Navigation %>
		</div>
	</div>
</header>