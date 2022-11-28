<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeControlles;
use App\Http\Controllers\ProdutoController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ComentarioController;

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


Route::get('/ola',[HomeControlles::class,'index']);
Route::get('/produto',[ProdutoController::class,'index']);
Route::get('/produto/{id}',[ProdutoController::class,'show']);

Route::get('/usuario',[UsuarioController::class,'index']);
Route::get('/usuario/{id}',[UsuarioController::class,'show']);

Route::get('/post',[PostController::class,'index']);
Route::get('/post/{id}',[PostController::class,'show']);

Route::get('/comentario',[ComentarioController::class,'index']);
Route::get('/comentario/{id}',[ComentarioController::class,'show']);