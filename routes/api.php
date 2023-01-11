<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\PostController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\ComentarioController;
use App\Http\Controllers\Api\Auth\LoginController;


Route::middleware('auth:sanctum')
    ->get('/user', function (Request $request) {
                return $request->user();
    });

// GET API PUBLICACOES
Route::get('publicacoes',[PostController::class,'index'])
    ->middleware(['auth:sanctum']);
Route::get('publicacoes/{id}',[PostController::class,'show'])
    ->middleware(['auth:sanctum']);
Route::get('publicacoes/{publi}/comentarios',[PostController::class,'comentarios'])
    ->middleware(['auth:sanctum']);

// POST, PUT E DELETE - API PUBLICACOES
Route::post('publicacoes',[PostController::class,'store'])
    ->middleware(['auth:sanctum','ability:is-admin']);  
Route::put('publicacoes/{id}',[PostController::class,'update'])
    ->middleware(['auth:sanctum','ability:is-admin']);  
Route::delete('publicacoes/{id}',[PostController::class,'remove'])
    ->middleware(['auth:sanctum','ability:is-admin']);  


// GET API COMENTARIOS
Route::get('comentarios',[ComentarioController::class,'index'])
->middleware(['auth:sanctum']);
Route::get('comentarios/{id}',[ComentarioController::class,'show'])
->middleware(['auth:sanctum']);

// POST, PUT E DELETE - API COMENTARIOS
Route::post('/comentarios',[ComentarioController::class,'store'])
    ->middleware(['auth:sanctum','ability:is-admin']);  
Route::put('comentarios/{id}',[ComentarioController::class,'update'])
    ->middleware(['auth:sanctum','ability:is-admin']);  
Route::delete('comentarios/{id}',[ComentarioController::class,'remove'])
    ->middleware(['auth:sanctum','ability:is-admin']); 

// GET API USERS

Route::apiResource('users',UserController::class);
Route::get('/users',[UserController::class,'index'])
    ->middleware(['auth:sanctum']);
Route::get('users/{user}/publicacoes',[UserController::class,'publicacoes'])
    ->middleware(['auth:sanctum']);

// POST, PUT E DELETE - API USERS

Route::post('/users',[UserController::class,'store'])
    ->middleware(['auth:sanctum','ability:is-admin']); 
Route::put('/users{id}',[UserController::class,'update'])
    ->middleware(['auth:sanctum','ability:is-admin']); 
Route::delete('users/{id}',[UserController::class,'remove'])
    ->middleware(['auth:sanctum','ability:is-admin']); 

Route::post('/users',[UserController::class,'store']);
Route::post('login',[LoginController::class,'login']);