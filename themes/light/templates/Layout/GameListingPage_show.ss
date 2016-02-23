<div class="row">
	<div class="row">
		<% include Sidebar %>
		<div class="columns nine">
			<div class="main typography results-list" role="main" id="main">
				<h1 class="page-header">$Title</h1>
				$Content.RichLinks
				
				<strong class="">run by <% if $FacilitatorText %>$FacilitatorText.LowerCase<% else_if MemberName %>$MemberName.LowerCase<% else %>hydra<% end_if %></strong>
				<div class="text pvm ">
					<p class="lead">$Brief</p>
					$Details
				</div>

				<table class="striped">
					<legend class="nonvisual-indicator">Game Details</legend>
					<tbody>
					<% if $Session %>
						<tr>
							<th>Session:</th>
							<td>$Session</td>
						</tr>
					<% end_if %>
					<% if $NumPlayers %>
						<tr>
							<th>Number of Players:</th>
							<td>$NumPlayers</td>
						</tr>
					<% end_if %>
					<% if $Restriction %>
						<tr>
							<th>Restriction:</th>
							<td>$Restriction</td>
						</tr>
					<% end_if %>
					<% if $Genre %>
						<tr>
							<th>Genre:</th>
							<td>$Genre</td>
						</tr>
					<% end_if %>
					<% if $Costuming %>
						<tr>
							<th>Costume:</th>
							<td>$Costuming</td>
						</tr>
					<% end_if %>
					</tbody>
				</table>


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
