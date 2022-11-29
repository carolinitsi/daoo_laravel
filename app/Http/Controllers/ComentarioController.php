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

    
    public function create(){
        return view('comentario_create');
    }

    public function store(Request $request)
    {
        $newComentario = $request->all();
        if (Comentario::create($newComentario))
            return redirect('/comentario');
        else dd("Error ao criar comentario!!");
    }

    public function edit($id){
        return view('comentario_edit',['comentario' => Comentario::find($id)]);
    }

    public function update(Request $request, $id)
    {
        $updatedComentario = $request->all();
        if (!Comentario::find($id)->update($updatedComentario))
            dd("Erro ao atualizar comentário $id!");
        return redirect('/comentarios');
    }

    public function delete($id){
        return view('/comentario_delete',['comentario' => Comentario::find($id)]);
    }

    public function remove(Request $request, $id){
        if($request->confirmar == 'Deletar')
            if(!Comentario::destroy($id))
                dd("Erro ao deletar comentario $id.");
        return redirect('/comentarios');
    }
}
