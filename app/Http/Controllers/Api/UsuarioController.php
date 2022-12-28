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

    public function show(Usuario $usuario){
            return response()->json(['usuario' => $usuario]);
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

    public function update(Request $request, Usuario $usuario)
    {
        try{
            $data = $request->all();
            $usuario = update($data);
            return response()->json([
                'message'=>'Usuario atualizado com sucesso!',
                'post'=>$usuario
            ]);
        }catch(Exception $error){
            $message = [
                "Erro:"=>"Erro ao atualizar novo usuario",
                "Exception:"=>$error->getMessage()
            ];
            $status = 401;
            return response()->json($message,$status);
        }
    }

    public function destroy(Usuario $usuario)
    {
        try {
            if (!$usuario->delete())
                throw new \Exception("Erro não detectado, tente mais tarde!");

            return response()->json([
                "msg" => "Usuario excluido.",
                "usuario" => $usuario
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao deletar o usuario!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function publicacoes(Usuario $usuario)
    {
        return response()->json([
            ['usuario'=>$usuario->load('publicacoes')]
        ]);
    }
}
