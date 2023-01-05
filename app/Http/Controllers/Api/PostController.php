<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use \Exception;


class PostController extends Controller
{

    public function index(Request $request){
        $perPage = $request->query('per_page');
        $paginatePosts = Post::paginate($perPage);
        $paginatePosts->appends([
            'per_page'=>$perPage
        ]);
        return response()->json($paginatePosts);  
    }

    public function show($id){
        try{
            return response()->json(Post::findOrFail($id));
        }catch(\Exception $error){
            $responseError = [
                'Erro' => "O post com a id: $id não foi encontrado",
                'Exception' => $error->getMessage(),
            ];
            $statusHttp = 404;
            return response() -> json($responseError , $statusHttp);
        }
    }

    public function store(PostRequest $request){
        try{
            $newPost = $request->all();
            $storedPost = Post::create($newPost);
            return response()->json([
                'message'=>'Post cadastrado com sucesso!',
                'post'=>$storedPost
            ]);
        }catch(Exception $error){
            $message = [
                "Erro:"=>"Erro ao cadastrar novo post",
                "Exception:"=>$error->getMessage()
            ];
            $status = 401;//bad request
            return response()->json($message,$status);
        }
    }

    public function update(Request $request, int $id)
    {
        try{
            $data = $request->all();
            $updPost = Post::findOrFail($id);
            $updPost->update($data);
            return response()->json([
                'message'=>'Post atualizado com sucesso!',
                'post'=>$updPost
            ]);
        }catch(Exception $error){
            $message = [
                "Erro:"=>"Erro ao atualizar novo post",
                "Exception:"=>$error->getMessage()
            ];
            $status = 401;
            return response()->json($message,$status);
        }
    }

    public function remove(int $id)
    {
        $status = 404;
        try {
            if (!Post::findOrFail($id)->delete()) {
                $status = 500;
                throw new Exception("Erro ao deletar post de id:$id");
            }
            return response()->json([
                'message' => "Post id:$id removido com sucesso!"
            ]);
        } catch (Exception $error) {
            $message = [
                "Erro:" => "Erro ao remover post",
                "Exception:" => $error->getMessage()
            ];
            return response()->json($message, $status);
        }
    }
}
