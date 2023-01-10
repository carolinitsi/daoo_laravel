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
        "user_id"
    ];

    public function usuario(){
        return $this->belongsTo(User::class);
    }

    public function comentarios(){
        return $this->hasMany(Comentario::class);
    }

}
