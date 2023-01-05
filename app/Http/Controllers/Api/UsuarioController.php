<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Usuario;
use Illuminate\Http\Request;
use \Exception;


class UsuarioController extends Controller
{

    public function index(Request $request)
    {
        $perPage = $request->query('per_page');
        $paginateUsuario = Usuario::paginate($perPage);
        $paginateUsuario->appends([
            'per_page'=>$perPage
        ]);
        return response()->json($paginateUsuario);
    }

    public function store(Request $request){
        $statusHttp=500;
        try {
            if (!$request->user()->tokenCan('is-admin')) {
                $statusHttp = 403;
                throw new \Exception("Não possui permissão!!!");
            }
            $newUsuario = $request->all();
            $storedUsuario = Usuario::create($newUsuario);
            return response()->json([
                'message' => 'Usuario cadastrado com sucesso!',
                'Usuario' => $storedUsuario
            ]);
        } catch (\Exception $error) {
            $message = [
                "Erro:" => "Erro ao cadastrar novo Fornecedor",
                "Exception:" => $error->getMessage()
            ];
            return response()->json($message, $statusHttp);
        }
    }

    public function show(Usuario $usuario)
    {
        return response()->json(['usuario' => $usuario]);
    }

    public function update(Request $request, Usuario $usuario)
    {
        $statusHttp=500;
        try {
            $data = $request->all();
            $usuario->update($data);
            return response()->json([
                'message' => 'Usuario atualizado com sucesso!',
                'Usuario' => $usuario
            ]);
        } catch (\Exception $error) {
            $message = [
                "Erro:" => "Erro ao atualizar fornecedor",
                "Exception:" => $error->getMessage()
            ];
            return response()->json($message, $statusHttp);
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
