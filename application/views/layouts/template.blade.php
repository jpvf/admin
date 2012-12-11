<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Zetta Admin</title>
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

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          {{ HTML::link('admin/pages', 'Admin Zetta', 'class="brand"') }}
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Bienvenido, {{ Auth::user()->name }}
              {{ HTML::link('admin/logout', 'Salir') }}
            </p>    

            <ul class="nav">
              	<li
                @if (URI::segment(2) == 'pages')
                  class="active"
                @endif
                >
            		{{ HTML::link('admin/pages', 'Páginas') }}
              	</li>
              	<li
                @if (URI::segment(2) == 'users')
                  class="active"
                @endif
                >
              		{{ HTML::link('admin/users', 'Usuarios') }}
              	</li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">
   		@if (isset($errors) && count($errors->all()) > 0)
			<div class="alert alert-error">
			    <a class="close" data-dismiss="alert" href="#">×</a>
			    <ul>
			    @foreach ($errors->all('<li>:message</li>') as $message)
			    {{ $message }}
			    @endforeach
			    </ul>
			</div>
			@elseif (!is_null(Session::get('status_error')))
			<div class="alert alert-error">
			    <a class="close" data-dismiss="alert" href="#">×</a>
			    @if (is_array(Session::get('status_error')))
			        <ul>
			        @foreach (Session::get('status_error') as $error)
			            <li>{{ $error }}</li>
			        @endforeach
			        </ul>
			    @else
			        {{ Session::get('status_error') }}
			    @endif
			</div>
			@endif
			@if (!is_null(Session::get('status_success')))
			<div class="alert alert-success">
			    <a class="close" data-dismiss="alert" href="#">×</a>
			    @if (is_array(Session::get('status_success')))
			        <ul>
			        @foreach (Session::get('status_success') as $success)
			            <li>{{ $success }}</li>
			        @endforeach
			        </ul>
			    @else
			        {{ Session::get('status_success') }}
			    @endif
			</div>
			@endif
      @yield('content')

      <footer>
        <p>&copy; Zetta 2012</p>
      </footer>

    </div><!--/.fluid-container-->

  </body>
</html>
