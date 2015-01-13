<div id="$Name" class="control-group field<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %><label class="left" for="$ID">$Title <% if $Required %><span class="req-indicator">required</span><% end_if %></label><% end_if %>
	

	$Field

	<% if RightTitle %><span class="extra" for="$ID" aria-describedby="$ID">$RightTitle</span><% end_if %>



	<% if Message %><div class="message alert $MessageType <% if $MessageType==validation %>danger<% end_if %>">$Message</div><% end_if %>
</div>