<?php

namespace App\Http\Controllers;
use App\Models\Comentario;

use Illuminate\Http\Request;

class ComentarioController extends Controller
{
    public function index(){
        $modelComentario = new Comentario();
        $comentario = $modelComentario->all();
        return view('pages.comentario.index',
        ['comentarios' => $comentario]);
    }

    public function show($id){

        return view(
            'pages.comentario.single',
            ['comentario' => Comentario::find($id)]
        );
    }

    
    public function create(){

        return view('pages.comentario.create');
    }

    public function store(Request $request)
    {

        $newComentario = $request->all();
        if (Comentario::create($newComentario))
            return redirect('/dashboard');
        else dd("Error ao criar comentario!!");

    }

    public function edit($id){
        return view('pages.comentario.edit', ['comentario' => Comentario::find($id)]);
    }

    public function update(Request $request, $id)
    {
        $updatedComentario = $request->all();
        if (!Comentario::find($id)->update($updatedComentario))
            dd("Erro ao atualizar comentário $id!");
        return redirect('/dashboard');
    }

    public function delete($id){
        return view(
            'pages.comenario.delete',
            ['comenario' => Comentario::find($id)]
        );    }

    public function remove(Request $request, $id){
        if($request->confirmar == 'Deletar')
            if(!Comentario::destroy($id))
                dd("Erro ao deletar comentario $id.");
        return redirect('/dashboard');
    }
}
