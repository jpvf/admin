@layout('layouts.template')

@section('content')
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h2>Colores <small>(Edicion)</small></h2>
			</div>

			<div class="toolbar">
				<div class="pull-right">
					{{ HTML::link('admin/pages/create', 'Agregar', 'class="btn"') }}
				</div>
			</div>


			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Posición</th>
						<th>Activo</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							{{ HTML::link('admin/pages/1', 'Colores varios') }}
						</td>
						<td>1</td>
						<td>
							{{ HTML::link('admin/pages/1', 'Si') }}
						</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
@endsection

<style type="text/css">
	div.toolbar {overflow: hidden;margin-bottom:20px}
</style>