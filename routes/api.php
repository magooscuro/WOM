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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    dd("hhhhh");
});

Route::post('registrar', 'API\Auth\RegistreController@registro');

Route::post('login', 'API\Auth\LoginController@login');

Route::post('refresh', 'API\Auth\LoginController@refresh');

Route::resource('genero','API\GeneroController',['only'=>[
    'index', 'store', 'show', 'update', 'destroy']]);

