<?php

use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ComentarioController;
use App\Http\Controllers\ProfileController;
use App\Models\Usuario;
use App\Models\Post;
use App\Models\Comentario;
use App\Models\User;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('landing', ['usuarios' => Usuario::all()]);
})->name('landing');

Route::get('/dashboard', function () {
    return view(
        'dashboard',
        [
            'usuarios' => Usuario::all(),
            'users' => User::all(),
            'publicacoes' => Post::all(),
            'comentarios' => Comentario::all(),
        ]
    );
})->middleware(['auth', 'verified'])->name('dashboard');



Route::get('/dashboard/usuario/{id}', function ($id) {
    return view('pages.usuario.single-dash', ['usuario' => Usuario::find($id)]);
})->middleware(['auth', 'verified'])->name('usuario.single-dash');

Route::get('/dashboard/publicacao/{id}', function ($id) {
    return view('pages.publicacao.single-dash',['publicacao'=>Post::find($id) ]);
})->middleware(['auth', 'verified'])->name('publicacao.single-dash');

Route::get('/dashboard/comentario/{id}', function ($id) {
    return view('pages.comentario.single-dash',['comentario'=>Comentario::find($id) ]);
})->middleware(['auth', 'verified'])->name('comentario.single-dash');



Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

Route::controller(UsuarioController::class)
    ->group(function () {
        Route::prefix('/usuarios')->group(function () {
            Route::get('/', 'index')->name('usuarios')->middleware('auth');
            Route::get('/{id}', 'show')->name('single');
        });
        Route::prefix('/usuario')
            ->middleware('auth')
            ->group(function () {

                Route::get('/', 'create');
                Route::post('/', 'store');

                Route::get('/{id}/edit', 'edit')->name('edit');
                Route::post('/{id}/update', 'update')->name('update');

                Route::get('/{id}/delete', 'delete')->name('delete');
                Route::post('/{id}/remove', 'remove')->name('remove');
            });
    });


    Route::controller(PostController::class)
    ->group(function () {
        Route::prefix('/publicacoes')->group(function () {
            Route::get('/', 'index')->name('publicacoes')->middleware('auth');
            Route::get('/{id}', 'show')->name('single');
        });
        Route::prefix('/publicacao')
            ->middleware('auth')
            ->group(function () {

                Route::get('/', 'create');
                Route::post('/', 'store');

                Route::get('/{id}/edit', 'edit')->name('edit');
                Route::post('/{id}/update', 'update')->name('update');

                Route::get('/{id}/delete', 'delete')->name('delete');
                Route::post('/{id}/remove', 'remove')->name('remove');
            });
    });


    Route::controller(ComentarioController::class)
    ->group(function () {
        Route::prefix('/comentarios')->group(function () {
            Route::get('/', 'index')->name('comentarios')->middleware('auth');
            Route::get('/{id}', 'show')->name('single');
        });
        Route::prefix('/comentario')
            ->middleware('auth')
            ->group(function () {

                Route::get('/', 'create');
                Route::post('/', 'store');

                Route::get('/{id}/edit', 'edit')->name('edit');
                Route::post('/{id}/update', 'update')->name('update');

                Route::get('/{id}/delete', 'delete')->name('delete');
                Route::post('/{id}/remove', 'remove')->name('remove');
            });
    });
