<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'api'], function () {
    Route::resource('registrasi', 'RegistrasisController', ['except' => ['create', 'edit']]);
    Route::resource('acara', 'AcarasController', ['except' => ['create', 'edit']]);
    Route::post('auth/login', [
        'as'    => 'api.auth.login',
        'uses'  => 'AuthController@doLogin'
    ]);
    Route::get('auth/logout', [
        'as'    => 'api.auth.logout',
        'uses'  => 'AuthController@doLogout'
    ]);
});
