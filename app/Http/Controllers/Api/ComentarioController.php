<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ComentarioRequest;
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

    public function store(ComentarioRequest $request)
    {
        $status=500;
        try{
           $newComentario = $request->post();
           if(!$newComentario){
            $status = 400;
            throw new Exeption('Os dados devem ser enviados via POST!');
           }
           $response = [
            'mensagem' => 'Comentário realizado com sucesso!',
            'Comentario'=>Comentario::create($newComentario)
           ];
           $status = 200;

        }catch(Exception $error){
            $status = isset($error->errorInfo)?500:$status;
           $response = [
            'error'=>isset($error->errorInfo)?
            'Erro interno com o banco de dados!'
            :$error->getMessage()
           ];
        }
        return response()->json($response,$status);

    }

    public function update(Request $request, int $id)
    {
        try{
            $data = $request->all();
            $updComentario = Comentario::findOrFail($id);
            $updComentario->update($data);
            return response()->json([
                'message'=>'Comentario atualizado com sucesso!',
                'Comentario'=>$updComentario
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
