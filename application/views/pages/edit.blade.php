@layout('layouts.template')

@section('content')
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h2>Colores <small>(Edicion)</small></h2>
			</div>

			{{ Form::open_for_files('admin/pages/upload') }}
			    <!-- check for login errors flash var -->
			    @if (Session::has('login_errors'))
			        <span class="error">Ha ocurrido un error subiendo las imagenes</span>
			    @endif

			    <fieldset>
				    <div id="legend">
				      <legend class="">Adjuntar imágenes</legend>
				    </div>
				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('name', 'Nombre', array('class' => 'control-label')) }}
				      	<div class="controls">
				    		{{ Form::text('name', $banner->name) }}
				      	</div>
				    </div>

				    <!-- username field -->
				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('background', 'Fondo') }}
				      	<div class="controls">
				    		{{ Form::file('background') }}

				    		<div>
				    			<img src="/images/banners/{{ $banner->background }}" style='width:200px'>
				    		</div>
				      	</div>
				    </div>

				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('content', 'Contenido') }}
				      	<div class="controls">
				    		{{ Form::file('content') }}
				    		<div>
				    			<img src="/images/banners/{{ $banner->title }}" style='width:200px'>
				    		</div>
				      	</div>
				    </div>

				    <div class="control-group">
				      	<!-- Button -->
						<div class="controls">
							<button class="btn btn-success" type='submit'>Guardar</button>
							{{ HTML::link('admin/pages', 'Cancelar', 'class="btn"') }}
							{{ Form::hidden('banner', $banner->id) }}
						</div>
				    </div>
			  </fieldset>
			{{ Form::close() }}
		</div>
	</div>
@endsection

<style type="text/css">
	div.toolbar {overflow: hidden;margin-bottom:20px}
</style>