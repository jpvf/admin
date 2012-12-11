@layout('layouts.template')

@section('content')
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h2>Crear un usuario</h2>
			</div>

			{{ Form::open('admin/users/create', 'POST', array('class' => 'form-horizontal')) }}
			    <!-- check for login errors flash var -->
			    @if (Session::has('login_errors'))
			        <span class="error">Ha ocurrido un error subiendo las imagenes</span>
			    @endif

			    <fieldset>

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
				    	{{ Form::label('username', 'Usuario', array('class' => 'control-label')) }}
				      	<div class="controls">
				    		{{ Form::text('username') }}
				      	</div>
				    </div>

				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('email', 'Email', array('class' => 'control-label')) }}
				      	<div class="controls">
				    		{{ Form::text('email') }}
				      	</div>
				    </div>

				    <div class="control-group">
				      <!-- Username -->
				    	{{ Form::label('password', 'Contraseña', array('class' => 'control-label')) }}
				      	<div class="controls">
				    		{{ Form::password('password') }}
				      	</div>
				    </div>

				    <div class="form-actions">
						<button class="btn btn-success" type='submit'>Guardar</button>
						{{ HTML::link('admin/users', 'Cancelar', 'class="btn"') }}
				    </div>
			  </fieldset>
			{{ Form::close() }}
		</div>
	</div>
@endsection

<style type="text/css">
	div.toolbar {overflow: hidden;margin-bottom:20px}
	input {height: 30px !important}
</style>