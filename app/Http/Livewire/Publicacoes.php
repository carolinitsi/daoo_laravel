<?php

namespace App\Http\Livewire;

use App\Models\Post;
use Exception;
use Livewire\Component;
use Illuminate\Support\Facades\Log;

class Publicacoes extends Component
{
    public $publicacoes;
    public $orderAsc = true;
    public $orderColumn = 'id';

    public $id_post;
    public $assunto;
    public $post;
    public $id_user;
    
    public function render()
    {
        return view('livewire.publicacoes');
    }

    public function mount(){
        $this->publicacoes = Post::all();
    }

    // public function orderBy($column = 'id')
    // {
    //     $this->orderColumn = $column;
    //     $this-> = Post::orderBy(
    //         $this->orderColumn,
    //         $this->orderAsc ? 'asc' : 'desc'
    //     )->get();
    //     $this->orderAsc = !$this->orderAsc;
    //     //debugando variavel na saida do servidor
    //     Log::channel('stderr')->info($this->orderAsc?'asc':'desc');
    // }

    public function orderByName()
    {
        $this->orderBy('assunto');
    }


    public function save()
    {
        $publicacao = [
            "id" => $this->id_post,
            "assunto" => $this->assunto,
            "post" => $this->post,
            "id_user" => $this->id_user,
        ];

        // dd($publicacao);

        
        try {
            Post::create($publicacao);
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
        $this->assunto = '';
        $this->post = '';
        $this->id_user = '';
    }

    // public function remove($id)
    // {
    //     if (!Post::destroy($id))
    //         return "Erro!";
    //     $this->orderAsc = !$this->orderAsc;
    //     $this->orderBy($this->orderColumn);
    // }

    // public function update($id)
    // {

    //     $publicacao = [
    //         "id" => $this->iduser,
    //         "nome" => $this->nome,
    //         "email" => $this->email,
    //         "competencias" => $this->competencias,
    //         "profissao" => $this->profissao,
    //     ];

    //     dd($publicacao);

    //     Post::findOrFail($id)->update($publicacao);
    //     $this->orderAsc = !$this->orderAsc;
    //     $this->orderBy($this->orderColumn);
    //     $this->clear();
    // }
}