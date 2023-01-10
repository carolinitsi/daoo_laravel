<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comentario extends Model
{
    use HasFactory;
    protected $table = "comentarios";


    protected $fillable = [
        "comentario",
        "post_id"
    ];

    public function post(){
        return $this->belongsTo(Post::class);
    }

    public function comentarios()
    {
        return $this->hasMany(Comentario::class);
    }
}
