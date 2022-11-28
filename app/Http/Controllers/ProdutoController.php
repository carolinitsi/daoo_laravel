<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produto;

class ProdutoController extends Controller
{
    
    private $produto;

    public function __construct(){
        $this->produto = new Produto();
    }
    public function index(){
        return view('produtos',['produtos'=>$this->produto->all()]);
        dd($this);
    }

    public function show($id){
        return view('produto',['produto'=>Produto::find($id)]);

        dd(Produto::find($id));
    }
}
