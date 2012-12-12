@layout('layouts.template')

@section('content')
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h2>Usuarios</h2>
			</div>

			<div class="toolbar">
				<div class="pull-right">
					{{ HTML::link('admin/users/create', 'Agregar', 'class="btn"') }}
				</div>
			</div>


			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Usuario</th>
						<th>Email</th>
						<th>Activo</th>
					</tr>
				</thead>
				<tbody>
					@foreach ($users as $user) 
						<tr>
							<td>
								{{ HTML::link('admin/users/'.$user->id, $user->name) }}
							</td>
							<td>{{ $user->username }}</td>							
							<td>{{ $user->email }}</td>
							<td>
								{{ HTML::link('admin/users/'.$user->id.'/remove', ($user->active ? 'Si' : 'No')) }}
							</td>
						</tr>
					@endforeach
				</tbody>
			</table>

		</div>
	</div>
@endsection

<style type="text/css">
	div.toolbar {overflow: hidden;margin-bottom:20px}
</style>