<?php

namespace App\Http\Controllers;
use App\Models\Usuario;

use Illuminate\Http\Request;

class UsuarioController extends Controller
{
   
    public function index(){
        $modelUser = new Usuario();
        $usuarios = $modelUser->all();
        return view('usuarios', ['usuarios' => $usuarios]);
    }

    public function show($id){
        $modelUser = new Usuario();
        $usuarios = $modelUser->find($id);
        return view('usuario', ['usuario' => $usuarios]);
    }

    public function create(){
        return view('usuario_create');
    }

    public function store(Request $request)
    {
        $newUsuario = $request->all();
        if (Usuario::create($newUsuario))
            return redirect('/usuario');
        else dd("Error ao criar usuario!!");
    }

    public function edit($id){
        return view('usuario_edit',['usuario' => Usuario::find($id)]);
    }

    public function update(Request $request, $id)
    {
        $updatedUsuario = $request->all();
        if (!Usuario::find($id)->update($updatedUsuario))
            dd("Erro ao atualizar usuário $id!");
        return redirect('/usuarios');
    }

    public function delete($id){
        return view('/usuario_delete',['usuario' => Usuario::find($id)]);
    }

    public function remove(Request $request, $id){
        if($request->confirmar == 'Deletar')
            if(!Usuario::destroy($id))
                dd("Erro ao deletar usuário $id.");
        return redirect('/usuarios');
    }
}
