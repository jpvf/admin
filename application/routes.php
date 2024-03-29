<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Simply tell Laravel the HTTP verbs and URIs it should respond to. It is a
| breeze to setup your application using Laravel's RESTful routing and it
| is perfectly suited for building large applications and simple APIs.
|
| Let's respond to a simple GET request to http://example.com/hello:
|
|		Route::get('hello', function()
|		{
|			return 'Hello World!';
|		});
|
| You can even respond to more than one URI:
|
|		Route::post(array('hello', 'world'), function()
|		{
|			return 'Hello World!';
|		});
|
| It's easy to allow URI wildcards using (:num) or (:any):
|
|		Route::put('hello/(:any)', function($name)
|		{
|			return "Welcome, $name.";
|		});
|
*/

Route::get('/', function()
{
	$content = Content::where('active', '=', 1)->get();

	$banners = array();
	
	foreach ($content as $banner)
	{
		$banners[] = array(
			'title'      => '/images/'.$banner->title,
			'background' => '/images/'.$banner->background,
		);
	} 

	return View::make('home.index')
		->with('banners', $banners);
});

/*
|--------------------------------------------------------------------------
| Admin Login
|--------------------------------------------------------------------------
|
*/

Route::get('admin/login', function()
{
	return View::make('login');
});

Route::post('admin/login', function()
{
    $credentials = array(
    	'username' => Input::get('username'),
   		'password' => Input::get('password'),
    );

    if ( Auth::attempt($credentials) )
    {
        return Redirect::to('admin/pages');
    }
    else
    {
        return Redirect::to('admin/login')
            ->with('login_errors', true);
    }
});

Route::get('admin/logout', function()
{
	Auth::logout();
    return Redirect::to('/');
});



Route::get('admin/pages', array('before' => 'auth', 'do' => function() 
{
	$content = Content::all();

	return View::make('pages.index')
		->with('content', $content);
}));

Route::get('admin/pages/create', array('before' => 'auth', 'do' => function() 
{
	return View::make('pages.create');
}));


Route::get('admin/pages/(:num)', array('before' => 'auth', 'do' => function($id) 
{
	$content = Content::find($id);

	return View::make('pages.edit')
		->with('banner', $content);
}));

Route::get('admin/pages/(:num)/remove', array('before' => 'auth', 'do' => function($id) 
{
	$content = Content::find($id);

	$content->active = ($content->active == 1 ? 0 : 1);

	$content->save();

	Session::flash('status_success', 'Banner desactivado');

	return Redirect::to('admin/pages');
}));		

Route::post('admin/pages/upload', array('before' => 'auth', 'do' => function()
{
	$background = Input::file('background.name');
	$title      = Input::file('content.name');

	if (Input::get('banner'))
	{
		$content = Content::find(Input::get('banner'));
	}
	else
	{
		$content = new Content;
	}	

	$uploaded_content	 = true;
	$uploaded_background = true;

	if ($title)
	{
		$content->title = $title;
		$uploaded_content = Input::upload('content', 'public/images/banners', $title);
	}

	if ($background)
	{
		$content->background = $background;
		$uploaded_background = Input::upload('background', 'public/images/banners', $background);
	}

	$content->name = Input::get('name');

	$content->save();

	if ($uploaded_content AND $uploaded_background) 
	{
		Session::flash('status_success', 'Archivos subidos');
	} 
	else 
	{    
    	Session::flash('status_error', 'A ocurrido un error tratando de subir los archivos');
    }

    return Redirect::to('admin/pages');
}));


Route::get('admin/users', array('before' => 'auth', 'do' => function() 
{
	$users = User::all();

	return View::make('users.index')
		->with('users', $users);
}));


Route::get('admin/users/create', array('before' => 'auth', 'do' => function() 
{
	return View::make('users.create');
}));

Route::get('admin/users/(:num)/remove', array('before' => 'auth', 'do' => function($id) 
{
	$user = User::find($id);

	$user->active = ($user->active == 1 ? 0 : 1);

	$user->save();

	Session::flash('status_success', 'Usuario desactivado');

	return Redirect::to('admin/users');
}));		

Route::post('admin/users/create', array('before' => 'auth', 'do' => function() 
{
	if (Input::get('user'))
	{
		$user   = User::find(Input::get('user'));
		$action = 'actualizado';

		if (Input::get('password'))
		{
			$user->password = Hash::make(Input::get('password'));
		}
	}
	else
	{
		$user   = new User;
		$action = 'creado';		

		$user->password = Hash::make(Input::get('password'));
	}

	$user->email    = Input::get('email');
	$user->name     = Input::get('name');
	$user->username = Input::get('username');

	$user->save();

	return Redirect::to('admin/users')
            ->with('status_success', 'Se ha '.$action.' el usuario correctamente');
}));

Route::get('admin/users/(:num)', array('before' => 'auth', 'do' => function($num) 
{
	$user = User::find($num);
	
	return View::make('users.edit')
		->with('user', $user);
}));

/*
|--------------------------------------------------------------------------
| Application 404 & 500 Error Handlers
|--------------------------------------------------------------------------
|
| To centralize and simplify 404 handling, Laravel uses an awesome event
| system to retrieve the response. Feel free to modify this function to
| your tastes and the needs of your application.
|
| Similarly, we use an event to handle the display of 500 level errors
| within the application. These errors are fired when there is an
| uncaught exception thrown in the application.
|
*/

Event::listen('404', function()
{
	return Response::error('404');
});

Event::listen('500', function()
{
	return Response::error('500');
});

/*
|--------------------------------------------------------------------------
| Route Filters
|--------------------------------------------------------------------------
|
| Filters provide a convenient method for attaching functionality to your
| routes. The built-in before and after filters are called before and
| after every request to your application, and you may even create
| other filters that can be attached to individual routes.
|
| Let's walk through an example...
|
| First, define a filter:
|
|		Route::filter('filter', function()
|		{
|			return 'Filtered!';
|		});
|
| Next, attach the filter to a route:
|
|		Router::register('GET /', array('before' => 'filter', function()
|		{
|			return 'Hello World!';
|		}));
|
*/

Route::filter('before', function()
{
	// Do stuff before every request to your application...
});

Route::filter('after', function($response)
{
	// Do stuff after every request to your application...
});

Route::filter('csrf', function()
{
	if (Request::forged()) return Response::error('500');
});

Route::filter('auth', function()
{
	if (Auth::guest()) return Redirect::to('admin/login');
});