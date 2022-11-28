<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeControlles extends Controller
{
    //
    public function index(){
        echo"Olá mundo!";
        dd($this);
    }

}
