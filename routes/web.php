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

//-USUARIO
//mostrar
Route::get('/usuarios',[UsuarioController::class,'index']);
Route::get('/usuario/{id}',[UsuarioController::class,'show']);
//postar
Route::get('/usuario',[UsuarioController::class,'create']);
Route::post('/usuario',[UsuarioController::class,'store']);
//editar
Route::get('/usuario/{id}/edit',[UsuarioController::class,'edit']) ->name('edit');
Route::post('/usuario/{id}/update',[UsuarioController::class,'update']) ->name('update');
//deletar
Route::get('/usuario/{id}/delete',[UsuarioController::class,'delete']) ->name('delete');
Route::post('/usuario/{id}/delete',[UsuarioController::class,'remove']) ->name('remove');

//-POST
//mostrar
// Route::get('/posts',[PostController::class,'index']);
// Route::get('/post/{id}',[PostController::class,'show']);
// //postar
// Route::get('/post',[PostController::class,'create']);
// Route::post('/post',[PostController::class,'store']);
// //editar
// Route::get('/post/{id}/edit',[PostController::class,'edit']) ->name('edit');
// Route::post('/post/{id}/update',[PostController::class,'update']) ->name('update');
// //deletar
// Route::get('/post/{id}/delete',[PostController::class,'delete']) ->name('delete');
// Route::post('/post/{id}/delete',[PostController::class,'remove']) ->name('remove');

//-COMENTARIO
//mostrar
// Route::get('/comentarios',[ComentarioController::class,'index']);
// Route::get('/comentario/{id}',[ComentarioController::class,'show']);
// //postar
// Route::get('/comentario',[ComentarioController::class,'create']);
// Route::post('/comentario',[ComentarioController::class,'store']);
// //editar
// Route::get('/comentario/{id}/edit',[ComentarioController::class,'edit']) ->name('edit');
// Route::post('/comentario/{id}/update',[ComentarioController::class,'update']) ->name('update');
// //deletar
// Route::get('/comentario/{id}/delete',[ComentarioController::class,'delete']) ->name('delete');
// Route::post('/comentario/{id}/delete',[ComentarioController::class,'remove']) ->name('remove');