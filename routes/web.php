<?php

use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\ProfileController;
use App\Models\Usuario;
use App\Models\User;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard',
        ['usuarios'=>Usuario::all(),
         'users'=>User::all()
        ]);
})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('/dashboard/usuario/{id}', function ($id) {
    return view('pages.usuario.single-dash',['usuario'=>Usuario::find($id) ]);
})->middleware(['auth', 'verified'])->name('usuario.single-dash');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::controller(UsuarioController::class)
    ->group(function () {

        Route::prefix('/usuarios')->group(function () {
            Route::get('/', 'index')->name('usuarios');
            Route::get('/{id}', 'show');
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
?>