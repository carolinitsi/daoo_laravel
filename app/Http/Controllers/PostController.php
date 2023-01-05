<?php

namespace App\Http\Controllers;
use App\Models\Post;
use App\Models\Usuario;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        $modelPost = new Post();
        return view('pages.publicacao.index',
        ['publicacoes' => $modelPost->paginate(15)]);
    }

    public function show($id){
        return view(
            'pages.publicacao.single',
            ['publicacao' => Post::find($id)]
        );
    }

    public function create(){
        return view('pages.publicacao.create',
            ['publicacao'=>Post::all()]
        );
    }

    public function store(Request $request)
    {
        if ($request->has('confirmar')){
            $newPost = $request->all();
            if (!Post::create($newPost))
                dd("Error ao criar publicação!!");
        }
        return redirect('/dashboard');
    }

    public function edit($id){
        return view('pages.pblicacao.edit', [
            'publicacao' => Post::find($id),
            'usuarios'=>Usuario::all()
        ]);
    }

    public function update(Request $request, $id)
    {
        if($request->has('confirmar')){
            $updatedPost = $request->all();
            if (!Post::find($id)->update($updatedPost))
                dd("Erro ao atualizar publicação $id!");
        }
        return redirect('/dashboard');

        $updatedPost = $request->all();
        if (!Post::find($id)->update($updatedPost))
            dd("Erro ao atualizar publicação $id!");
        return redirect('/publicacoes');
    }

    public function delete($id){
        return view(
            'pages.publicacao.delete',
            ['publicacao' => Post::find($id)->load('usuario')]
        );
    }

    public function remove(Request $request, $id){
        if ($request->has('confirmar'))
            if (!Post::destroy($id))
                dd("Error ao deletar publicação $id.");
        return redirect('/dashboard');
    }
}
