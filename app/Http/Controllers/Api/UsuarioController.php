<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Usuario;
use Illuminate\Http\Request;
use \Exception;


class UsuarioController extends Controller
{
    public function index(){
        return response()->json(Usuario::all());
    }

    public function show($id){
        return response()->json(Usuario::findOrFail($id));
    }

    public function store(Request $request){
        try{
            $newUsuario = $request->all();
            $storedUsuario = Usuario::create($newUsuario);
            return response()->json([
                'message'=>'Usuario cadastrado com sucesso!',
                'usuario'=>$storedUsuario
            ]);
        }catch(\Exception $error){
            $message = [
                "Erro:"=>"Erro ao cadastrar novo usuario",
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
            $updUser = Usuario::findOrFail($id);
            $updUser->update($data);
            return response()->json([
                'message'=>'Usuario atualizado com sucesso!',
                'post'=>$updUser
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
            if (!Usuario::findOrFail($id)->delete()) {
                $status = 500;
                throw new Exception("Erro ao deletar usuario de id:$id");
            }
            return response()->json([
                'message' => "Usuário id:$id removido com sucesso!"
            ]);
        } catch (Exception $error) {
            $message = [
                "Erro:" => "Erro ao remover post",
                "Exception:" => $error->getMessage()
            ];
            return response()->json($message, $status);
        }
    }

    public function publicacoes(Usuario $usuario)
    {
        return response()->json([
            ['usuario'=>$usuario->load('publicacoes')]
        ]);
    }
}
