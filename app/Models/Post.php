<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $table = "posts";

    protected $fillable = [
        "id",
        "assunto",
        "post",
        "id_user"
    ];

    public function usuario(){
        return $this->belongsTo(Usuario::class);
    }

    // public function regiao(){
    //     return $this->belongsToThrough(
    //         Regiao::class,
    //         [
    //             Estado::class,
    //             Fornecedor::class
    //         ],
    //         null,
    //         '',
    //         [
    //             Regiao::class=>'regiao_id',
    //             Fornecedor::class=>'fornecedor_id'
    //         ]
    //     );
    // }
}
