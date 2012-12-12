@layout('layouts.template')

@section('content')
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h2>Banners</small></h2>
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
						<th>Fondo</th>
						<th>Contenido</th>
						<th>Activo</th>
					</tr>
				</thead>
				<tbody>
					@foreach ($content as $banner)
						<tr>
							<td>
								{{ HTML::link('admin/pages/'.$banner->id, $banner->name) }}
							</td>
							<td>
								{{ $banner->background }}
							</td>
							<td>
								{{ $banner->title }}
							</td>
							<td>
								{{ HTML::link('admin/pages/'.$banner->id.'/remove', ($banner->active ? 'Si' : 'No')) }}
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