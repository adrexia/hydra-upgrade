<div class="divider"></div>
<header class="header" role="banner">
	<div class="inner">
		<div class="row">
			<div class="twelve columns">
					<section class="brand-group row">
						<% if $SiteConfig.Logo %>
							<h1 class="twelve columns image">
								<a href="$BaseHref" class="logo" rel="home" alt="$SiteConfig.LogoText">
									$SiteConfig.Logo
								</a>
							</h1>
						<% else %>
							<h1 class="seven columns">
								<a href="$BaseHref" class="logo" rel="home">
								$SiteConfig.LogoText
								</a>
							</h1>
						<% end_if %>
							
						<div class="btn-login five columns">
						<p class="">
							<% if $CurrentMember %>
							<span class="meta-data">
								Logged in as <a href="$MemberProfilePage.Link">$CurrentMember.FirstName</a>
								<% if $CMSAccess %>
								 | <a href="{$BaseHref}admin">Admin</a> 
								<% end_if %>
							</span>
								
							<% end_if %>
							<span class="btn medium success metro rounded login pretty pull_right">
								<% if $CurrentMember %>
									<a href="{$BaseHref}Security/logout">Log out</a>
								<% else %>
									<a href="{$BaseHref}Security/login">Login</a>
								<% end_if %>
							</span>
								</p>
						</div>
					</section>
			</div>
		</div>
		<div class="row">
			<% include Navigation %>
		</div>
	</div>
</header>