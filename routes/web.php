<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfilesController;

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

Route::get('/booking/start', 'App\Http\Controllers\TemplateController@booking_page')->name('template.booking');
Route::post('/booking/post_data', 'App\Http\Controllers\TemplateController@get_time')->name('get_time_data');
Route::post('/complete_appointment', 'App\Http\Controllers\TemplateController@complete_appointment')->name('complete_appointment');
Route::post('/couponcode', 'App\Http\Controllers\TemplateController@ajax_couponcode')->name('couponcode');
Route::get('/{link_name}/{page?}', 'App\Http\Controllers\TemplateController@index')->name('template.index');
