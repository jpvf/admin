<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
 
    <!-- Le styles -->
    {{ HTML::style('css/bootstrap.min.css'); }}
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

  </head>

  <body>

    <div class="container-fluid">
      {{ Form::open('admin/login') }}
	    <!-- check for login errors flash var -->
	    @if (Session::has('login_errors'))
	        <span class="error">Username or password incorrect.</span>
	    @endif

	    <fieldset>
		    <div id="legend">
		      <legend class="">Login</legend>
		    </div>
		    <!-- username field -->
		    <div class="control-group">
		      <!-- Username -->
		    	{{ Form::label('username', 'Usuario') }}
		      	<div class="controls">
		    		{{ Form::text('username') }}
		      	</div>
		    </div>

		    <div class="control-group">
		      <!-- Username -->
		    	{{ Form::label('password', 'Password') }}
		      	<div class="controls">
		    		{{ Form::password('password') }}
		      	</div>
		    </div>

		    <div class="control-group">
		      	<!-- Button -->
				<div class="controls">
					<button class="btn btn-success" type='submit'>Ingresar</button>
					<a href="/" class="btn">Volver al sitio</a>
				</div>
		    </div>
	  </fieldset>
	{{ Form::close() }}

      <hr>

      <footer>
        <p>&copy; Zetta 2012</p>
      </footer>

    </div><!--/.fluid-container-->


  </body>
</html>
