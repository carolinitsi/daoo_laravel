<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Comentario;
use Illuminate\Http\Request;
use \Exception;


class ComentarioController extends Controller
{

    public function index(){
        return response()->json(Comentario::all());
    }

    public function show($id){
        try{
            return response()->json(Comentario::findOrFail($id));
        }catch(\Exception $error){
            $responseError = [
                'Erro' => "O comentario com a id: $id não foi encontrado",
                'Exception' => $error->getMessage(),
            ];
            $statusHttp = 404;
            return response() -> json($responseError , $statusHttp);
        }
    }

    public function store(Request $request){
        try{
            $newComentario = $request->all();
            $storedComentario = Comentario::create($newComentario);
            return response()->json([
                'message'=>'Comentario realizado com sucesso!',
                'post'=>$storedComentario
            ]);
        }catch(Exception $error){
            $message = [
                "Erro:"=>"Erro ao fazer comentario",
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
            $updComentario = Comentario::findOrFail($id);
            $updComentario->update($data);
            return response()->json([
                'message'=>'Comentario atualizado com sucesso!',
                'post'=>$updComentario
            ]);
        }catch(Exception $error){
            $message = [
                "Erro:"=>"Erro ao atualizar Comentario",
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
            if (!Comentario::findOrFail($id)->delete()) {
                $status = 500;
                throw new Exception("Erro ao deletar comentario de id:$id");
            }
            return response()->json([
                'message' => "Comentario id:$id removido com sucesso!"
            ]);
        } catch (Exception $error) {
            $message = [
                "Erro:" => "Erro ao remover comentario",
                "Exception:" => $error->getMessage()
            ];
            return response()->json($message, $status);
        }
    }
}
