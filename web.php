<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use App\Mail\SampleMail;

//$resp=Http::get()
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

Route::get('/', function () {
    return view('welcome');
});


Route::get('/', function () {
    return new SampleMail();
});



Route::view('loginBook','loginBook');

Route::view('signup','signup');

Route::post('SignupController','SignupController@userSignup');

Route::post('login', 'API\UserController@login');
Route::post('register', 'API\UserController@register');
Route::group(['middleware' => 'auth:api'], function(){
Route::post('details', 'API\UserController@details');
});


Route::get('homePage',function(){
	if(session()->has('email'))
	{
		return view('homePage');
	}
	else
	{
		return view('loginBook');
	}
});


Route::view('bookAdd','bookAdd');

Route::view('bookUpdate','bookUpdate');

Route::view('bookDelete','bookDelete');

Route::post('BookDetails','API\BookDetails@insert');

Route::post('BookDetailsupdate','API\BookDetails@update');

Route::post('BookDetailsDelete','API\BookDetails@deleteRec');

Route::view('mail','mail');

