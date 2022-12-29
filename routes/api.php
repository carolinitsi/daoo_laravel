<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\PostController;
use App\Http\Controllers\Api\UsuarioController;
use App\Http\Controllers\Api\ComentarioController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/publicacao',[PostController::class, 'index']);
Route::get('/publicacao/{id}',[PostController::class, 'show']);
Route::post('/publicacao',[PostController::class, 'store']);
Route::put('/publicacao/{id}',[PostController::class, 'update']);
Route::delete('publicacao/{id}',[PostController::class,'remove']);

Route::get('/usuario',[UsuarioController::class, 'index']);
Route::get('/usuario/{id}',[UsuarioController::class, 'show']);
Route::post('/usuario',[UsuarioController::class, 'store']);
Route::put('/usuario/{id}',[UsuarioController::class, 'update']);
Route::delete('usuario/{id}',[UsuarioController::class,'remove']);

Route::get('/comentario',[ComentarioController::class, 'index']);
Route::get('/comentario/{id}',[ComentarioController::class, 'show']);
Route::post('/comentario',[ComentarioController::class, 'store']);
Route::put('/comentario/{id}',[ComentarioController::class, 'update']);
Route::delete('comentario/{id}',[ComentarioController::class,'remove']);

Route::apiResource('usuario',UsuarioController::class);
Route::get('usuario/{usuario}/publicacoes',
        [UsuarioController::class,
        'publicacoes'
    ]);
