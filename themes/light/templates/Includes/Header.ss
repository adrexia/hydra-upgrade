<header class="header row" role="banner">
	<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand columns seven">
		<% if SiteConfig.Logo %>
			<a title="Return to homepage" href="$BaseHref">
				<img src="$SiteConfig.Logo.URL" alt="$SiteConfig.Title logo" title="$SiteConfig.Title" />
				<span class="sr-only">$SiteConfig.Title</span>
			</a>
		<% else %>
			<a title="Return to homepage" href="$BaseHref" style="padding-left: 105px; height: 119px; min-height: 119px;">
				<i class="icon-home logo-placeholder"></i>
				<span class="sr-only">
					$SiteConfig.Title
				</span>
			</a>
		<% end_if %>
	</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>

	<div class="btn-login five columns">
		<p class="pull_right">
			<% if $CurrentMember %>
			<span class="meta-data prm">
				Logged in as <a href="$MemberProfilePage.Link">$CurrentMember.FirstName</a>
				<% if $CMSAccess %>
				 | <a href="{$BaseHref}admin">Admin</a>
				<% end_if %>
			</span>

			<% end_if %>
			<span class="btn medium secondary metro rounded login">
				<% if $CurrentMember %>
					<a href="{$BaseHref}Security/logout?BackURL={$Link}">Log out</a>
				<% else %>
					<a href="{$BaseHref}Security/login?BackURL={$Link}">Login</a>
				<% end_if %>
			</span>
		</p>
	</div>
</header>

<% include Navbar %>
