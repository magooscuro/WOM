<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->group(function (){
    Route::post('logout','API\Auth\LoginController@logout');
});

Route::post('registrar', 'API\Auth\RegistreController@registro');

Route::post('login', 'API\Auth\LoginController@login');

Route::post('refresh', 'API\Auth\LoginController@refresh');

Route::get('iduser','API\IdUserController@iduser');

Route::resource('genero','API\GeneroController',['only'=>[
    'index', 'store', 'show', 'update', 'destroy']]);

Route::resource('album','API\AlbumController',['only'=>[
    'index', 'store', 'show', 'update', 'destroy']]);

Route::resource('carrito','API\CarritoController',['only'=>[
    'index', 'store', 'show', 'update', 'destroy']]);


