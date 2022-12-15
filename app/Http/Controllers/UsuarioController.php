<?php

namespace App\Http\Controllers;
use App\Models\Usuario;

use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function index()
    {
        $modelUser = new Usuario();
        $usuarios = $modelUser->all();
        return view('pages.usuario.index',
        ['usuarios' => $usuarios]);
    }

    public function show($id){
        return
        view(
            'pages.usuario.single',
            ['usuario' => Usuario::find($id)]
        );
    }

    public function create(){
        return view('pages.usuario.create');
    }

    
    public function store(Request $request)
    {
        $newUsuario = $request->all();
        if (Usuario::create($newUsuario))
            return redirect('/usuarios');
        else dd("Error ao criar Usuario!!");
    }

    public function edit($id)
    {
        return view('pages.usuario.edit', ['usuario' => Usuario::find($id)]);
    }
    
    public function update(Request $request, $id)
    {
        $updatedUsuario = $request->all();
        if (!Usuario::find($id)->update($updatedUsuario))
            dd("Erro ao atualizar usuário $id!");
        return redirect('/dashboard');
    }


    public function delete($id)
    {
        return view(
            'pages.usuario.delete',
            ['usuario' => Usuario::find($id)]
        );
    }

    public function remove(Request $request, $id)
    {
        if ($request->confirmar == 'Deletar')
            if (!Usuario::destroy($id))
                dd("Error ao deletar Usuario $id.");
        return redirect('/dashboard');
    }
}
