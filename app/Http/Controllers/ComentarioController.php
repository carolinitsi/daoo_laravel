<?php

namespace App\Http\Controllers;
use App\Models\Comentario;

use Illuminate\Http\Request;

class ComentarioController extends Controller
{
    public function index(){
        $modelComentario = new Comentario();
        $comentario = $modelComentario->all();
        return view('comentarios', ['comentarios' => $comentario]);
    }

    public function show($id){
        $modelComentario = new Comentario();
        $comentarios = $modelComentario->find($id);
        return view('comentario', ['comentario' => $comentarios]);
    }
}
