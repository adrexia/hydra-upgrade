
<div class="row">
	<h1 class="three columns">
		<a href="$BaseHref" class="logo" rel="home">
		$SiteConfig.LogoText
		</a>
	</h1>


	<div class="nine columns">
		<section class="brand-group row">

			<div class="btn-login six columns pull-right">
				<p class="">
					<% if $CurrentMember %>
						<span class="meta-data">
							Logged in as <a href="$MemberProfilePage.Link">$CurrentMember.FirstName</a>
							<% if $CMSAccess %>
							 | <a href="{$BaseHref}admin">Admin</a>
							<% end_if %>
						</span>
					<% end_if %>
					<span class="btn medium success metro rounded login">
						<% if $CurrentMember %>
							<a href="{$BaseHref}Security/logout?BackURL={$Link}">Log out</a>
						<% else %>
							<a href="{$BaseHref}Security/login?BackURL={$Link}">Login</a>
						<% end_if %>
					</span>
				</p>
			</div>
		</section>

		<nav class="navbar" id="nav1">
			<a class="toggle" gumby-trigger="#nav1 > .row > ul" href="#"><i class="icon-menu"></i></a>
			<div class="row">
				<ul class="twelve columns">
					<% loop $Menu(1) %>
						<% if $ClassName==RegistrationPage %>
							<% if not $getCurrentRegistration %>
								<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
							<% end_if %>
						<% else_if $ClassName==GameSignupPage %>
							<% if $getCurrentRegistration %>
								<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
							<% end_if %>
						<% else %>
							<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
						<% end_if %>
					<% end_loop %>
				</ul>
			</div>
		</nav>
	</div>
</div>
