<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;
    protected $table = "users";

    protected $fillable = [
        "id",
        "email",
        "password",
        "name",
        "profissao",
        "competencias"
    ];


    public function publicacoes()
    {
        return $this->hasMany(Post::class);
    }
}
