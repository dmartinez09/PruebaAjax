<tr id="enterprise_<%= enterprise.id %>">
	<td><%= enterprise.name %></td>
	<td><button class="btn btn-default btn-sm"><%= link_to 'Show', enterprise %></button></td>
	<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal_enterprise_<%= enterprise.id %>">Editar</button>
	<%#= link_to 'Edit', edit_enterprise_path(enterprise) %></td>
	<td><button class="btn btn-default btn-sm"><%= link_to 'Destroy', enterprise, method: :delete, data: { confirm: 'Are you sure?', remote: true } %></button></td>
</tr>

<!-- Modal -->
<div class="modal fade" id="modal_enterprise_<%= enterprise.id %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Editar <%= enterprise.name %></h4>
      </div>
      <div class="modal-body">
        <%= render 'form', enterprise: enterprise %>
      </div>
<!--       <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
    </div>
  </div>
</div>