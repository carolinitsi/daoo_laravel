<?php

namespace App\Http\Controllers;
use App\Models\Post;


use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        $modelPost = new Post();
        $posts = $modelPost->all();
        return view('pages.publicacao.index',
        ['publicacoes' => $posts]);
    }

    public function show($id){
        $modelPost = new Post();
        $publicacoes = $modelPost->find($id);
        return view('publicacao', ['publicacao' => $publicacoes]);
    }

    public function create(){
        return view('pages.publicacao.create');
    }

    public function store(Request $request)
    {
        $newPost = $request->all();
        if (Post::create($newPost))
            return redirect('/dashboard');
        else dd("Error ao criar publicação!!");
    }

    public function edit($id){
        return view('post_edit',['post' => Post::find($id)]);
    }

    public function update(Request $request, $id)
    {
        $updatedPost = $request->all();
        if (!Post::find($id)->update($updatedPost))
            dd("Erro ao atualizar publicação $id!");
        return redirect('/publicacoes');
    }

    public function delete($id){
        return view('/post_delete',['post' => Post::find($id)]);
    }

    public function remove(Request $request, $id){
        if($request->confirmar == 'Deletar')
            if(!Post::destroy($id))
                dd("Erro ao deletar publicação $id.");
        return redirect('/publicacoes');
    }
}
