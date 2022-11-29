<?php

namespace App\Http\Controllers;
use App\Models\Post;


use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        $modelPost = new Post();
        $post = $modelPost->all();
        return view('posts', ['posts' => $post]);
    }

    public function show($id){
        $modelPost = new Post();
        $posts = $modelPost->find($id);
        return view('post', ['post' => $posts]);
    }

    public function create(){
        return view('post_create');
    }

    public function store(Request $request)
    {
        $newPost = $request->all();
        if (Post::create($newPost))
            return redirect('/post');
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
        return redirect('/posts');
    }

    public function delete($id){
        return view('/post_delete',['post' => Post::find($id)]);
    }

    public function remove(Request $request, $id){
        if($request->confirmar == 'Deletar')
            if(!Post::destroy($id))
                dd("Erro ao deletar publicação $id.");
        return redirect('/posts');
    }
}
