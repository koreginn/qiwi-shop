<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'ProductController@getLatestProducts')->name('welcome');

Route::get('/catalog', 'ProductController@getAllProducts')->name('catalog');
Route::get('/catalog/price', 'ProductController@getAllProductsSortPrice')->name('catalog');
Route::get('/catalog/name', 'ProductController@getAllProductsSortName')->name('catalog');

Route::get('/payment', 'PaymentController@getPaymentProduct')->name('checkout');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/login', function () {
    return view('auth.login');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/home', 'HomeController@getOrders')->name('catalog');

Auth::routes();