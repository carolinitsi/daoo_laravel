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
}
