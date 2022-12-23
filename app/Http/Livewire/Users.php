<?php

namespace App\Http\Livewire;

use App\Models\Usuario;
use Exception;
use Livewire\Component;
use Illuminate\Support\Facades\Log;

class Users extends Component
{
    public $usuarios;
    public $orderAsc = true;
    public $orderColumn = 'id';

    public $nome;
    public $email;
    public $profissao;
    public $competencias;
    public $senha;
    public $iduser;
    
    public function render()
    {
        return view('livewire.users');
    }

    public function mount(){
        $this->usuarios = Usuario::all();
    }

    public function orderBy($column = 'id')
    {
        $this->orderColumn = $column;
        $this->usuarios = Usuario::orderBy(
            $this->orderColumn,
            $this->orderAsc ? 'asc' : 'desc'
        )->get();
        $this->orderAsc = !$this->orderAsc;
        //debugando variavel na saida do servidor
        Log::channel('stderr')->info($this->orderAsc?'asc':'desc');
    }

    public function orderByName()
    {
        $this->orderBy('nome');
    }


    public function save()
    {
        $usuario = [
            "nome" => $this->nome,
            "email" => $this->email,
            "competencias" => $this->competencias,
            "profissao" => $this->profissao,
            "senha" => $this->senha,
        ];


        try {
            Usuario::create($usuario);
            $this->clear();
            $this->orderAsc = false;
            $this->orderBy();
        } catch (Exception $e) {
            dd('Erro ao inserir');
            dd($e);
        }
    }

    private function clear()
    {
        $this->nome = '';
        $this->email = '';
        $this->profissao = '';
        $this->competencias = '';
    }

    public function remove($iduser)
    {
        if (!Usuario::destroy($iduser))
            return "Erro!";
        $this->orderAsc = !$this->orderAsc;
        $this->orderBy($this->orderColumn);
    }

    public function update($iduser)
    {

        $usuario = [
            "id" => $this->iduser,
            "nome" => $this->nome,
            "email" => $this->email,
            "competencias" => $this->competencias,
            "profissao" => $this->profissao,
        ];

        dd($usuario);

        Usuario::findOrFail($iduser)->update($usuario);
        $this->orderAsc = !$this->orderAsc;
        $this->orderBy($this->orderColumn);
        $this->clear();
    }
}