<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

/*Route::get('/',function(){
    return view('admin.dashboard');
});*/

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Route::resource('genero','GeneroController');

Route::resource('home','GeneroController');

Route::resource('artista','ArtistaController');

Route::resource('tipopago','TipoPagoController');

Route::resource('discografia','DiscografiaController');

Route::resource('album','AlbumController');

Route::resource('cupon','CuponController');

Route::resource('detallecompra','DetalleCompraController');

Route::resource('user','UserController');

Route::resource('reporte','ReporteController');

Route:: resource('compra','CompraController');


