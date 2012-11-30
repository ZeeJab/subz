$('#map_container').empty()

$('#map_container').append('<%=j render :partial => 'map', :locals => {:lat => 40.7, :long => -73.98, :zoom => 12} %>')

<% @subways.each do |subway| %>
	add_marker(<%= subway.latitude%>,<%=subway.longitude%>,'<%=subway.name%>');
<% end %>

