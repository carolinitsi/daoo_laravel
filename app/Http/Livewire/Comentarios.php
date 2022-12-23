<?php

namespace App\Http\Livewire;

use App\Models\Comentario;
use Exception;
use Livewire\Component;
use Illuminate\Support\Facades\Log;

class Comentarios extends Component
{
    public $comentarios;
    public $orderAsc = true;
    public $orderColumn = 'id';

    public $comentario;
 
    
    public function render()
    {
        return view('livewire.comentarios');
    }


    public function orderBy($column = 'id')
    {
        $this->orderColumn = $column;
        $this->comentarios = Comentario::orderBy(
            $this->orderColumn,
            $this->orderAsc ? 'asc' : 'desc'
        )->get();
        $this->orderAsc = !$this->orderAsc;
        //debugando variavel na saida do servidor
        Log::channel('stderr')->info($this->orderAsc?'asc':'desc');
    }

    public function orderByName()
    {
        $this->orderBy('comentario');
    }


    public function save()
    {
        $comentario = [
            "comentario" => $this->comentario,
        ];
        dd($comentario);
        try {
            Comentario::create($comentario);
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
        $this->comentario = '';
    }

    public function remove($id_comentario)
    {
        if (!Comentario::destroy($id_comentario))
            return "Erro!";
        $this->orderAsc = !$this->orderAsc;
        $this->orderBy($this->orderColumn);
    }

    public function update($id_comentario)
    {

        $comentario = [
            "comentario" => $this->comentario,
        ];

        dd($comentario);

        Comentario::findOrFail($id_comentario)->update($comentario);
        $this->orderAsc = !$this->orderAsc;
        $this->orderBy($this->orderColumn);
        $this->clear();
    }
}