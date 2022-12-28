<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UsuarioController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/publicacao',[PostController::class, 'index']);
Route::get('/publicacao/{id}',[PostController::class, 'show']);
Route::post('/publicacao',[PostController::class, 'store']);
Route::put('/publicacao/{id}',[PostController::class, 'update']);
Route::delete('publicacao/{id}',[PostController::class,'remove']);

Route::apiResource('usuario',UsuarioController::class);
Route::get('usuario/{usuario}/publicacoes',
        [UsuarioController::class,
        'publicacoes'
    ]);
