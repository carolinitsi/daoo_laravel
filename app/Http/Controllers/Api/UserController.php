<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
  
    public function index(Request $request)
    {
      
        $perPage = $request->query('per_page');
        $usersPaginated = User::paginate($perPage);
        $usersPaginated -> appends([
            'per_page'=>$perPage
        ]);
        return response()->json($usersPaginated);

    }

    public function store(UserRequest $request)
    {
        $status=500;
        try{
           $newUser = $request->post();
           if(!$newUser){
            $status = 400;
            throw new Exeption('Os dados devem ser enviados via POST!');
           }
           $newUser['password'] = password_hash($newUser['password'], PASSWORD_DEFAULT);
           $response = [
            'mensagem' => 'Usuário cadastrado com sucesso!',
            'user'=>User::create($newUser)
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

    public function show(User $user)
    {
        // return response()->json(compact('user'));
        return response()->json(['user'=>$user]);
    }

    public function update(Request $request, User $user)
    {
        $statusHttp=500;
        try {
            $data = $request->all();
            $user->update($data);
            return response()->json([
                'message' => 'Usuaria atualizado com sucesso!',
                'Usuária' => $user
            ]);
        } catch (Exception $error) {
            $message = [
                "Erro:" => "Erro ao atualizar usuaria",
                "Exception:" => $error->getMessage()
            ];
            return response()->json($message, $statusHttp);
        }
    }
    
    public function destroy(User $user)
    {
        try {
            if (!$user->delete())
                throw new \Exception("Erro não detectado, tente mais tarde!");

            return response()->json([
                "msg" => "Usuario excluido.",
                "usuario" => $user
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

    public function publicacoes(User $user)
    {
        // dd($user);
        return response()->json([
            ['usuario'=>$user->load('publicacoes')]
        ]);
    }


}