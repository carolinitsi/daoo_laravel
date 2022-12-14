<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PublicacaoRequest extends FormRequest
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
            'assunto'=> 'required | min:1 | string ',
            'post'=> 'required | min:1 | string ',
        ];
    }

    public function messages()
    {
        return [
            'post'=>'Insira ao menos um autor na publicação!',
        ];
    }
}