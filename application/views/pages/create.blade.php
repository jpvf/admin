@layout('layouts.template')

@section('content')
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h2>Agregar banner</h2>
			</div>

			{{ Form::open_for_files('admin/pages/upload', 'POST', array('class' => 'form-horizontal')) }}
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
				    		{{ Form::text('name') }}
				      	</div>
				    </div>
				    <!-- username field -->
				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('background', 'Fondo', array('class' => 'control-label')) }}
				      	<div class="controls">
				    		{{ Form::file('background') }}
				      	</div>
				    </div>

				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('content', 'Contenido', array('class' => 'control-label')) }}
				      	<div class="controls">
				    		{{ Form::file('content') }}
				      	</div>
				    </div>

				    <div class="form-actions">
						<button class="btn btn-success" type='submit'>Guardar</button>
						{{ HTML::link('admin/pages', 'Cancelar', 'class="btn"') }}
				    </div>
			  </fieldset>
			{{ Form::close() }}
		</div>
	</div>
@endsection

<style type="text/css">
	div.toolbar {overflow: hidden;margin-bottom:20px}
	input {height:30px !important}
</style>