<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ComentarioRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'comentario'      => 'required | string | max:200',
            'post_id'     => 'required | numeric',
        ];
    }

    public function messages()
    {
        return[
            'comentario.require'      => 'O comentario é obrigatório!!',
            'post_id.require'          => 'O comentário deve possuir a id da publicação!',
        ];
    }
}
