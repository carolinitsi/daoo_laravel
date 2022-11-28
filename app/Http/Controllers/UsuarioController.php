<?php

namespace App\Http\Controllers;
use App\Models\Usuario;

use Illuminate\Http\Request;

class UsuarioController extends Controller
{
   
    public function index(){
        $modelUser = new Usuario();
        $usuarios = $modelUser->all();
        return view('usuarios', ['usuarios' => $usuarios]);
    }

    public function show($id){
        $modelUser = new Usuario();
        $usuarios = $modelUser->find($id);
        return view('usuario', ['usuario' => $usuarios]);

        // return view('usuario',['usuario'=>Usuario::find($id)]);

        // dd(Usuario::find($id));
    }
}
