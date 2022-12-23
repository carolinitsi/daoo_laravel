<x-dash-layout>
    <h1>Editar:</h1>
    <form id=edit action="{{route('update',$post->id)}}" method="POST">
        @csrf
        <table>
            <tr>
                <td>Assunto:</td>
                <td><input type="text" name="assunto" value="{{$post->assunto}}"/></td>
            </tr>
            <tr>
                <td>Publicação:</td>
                <td><input type="text" name="post" value="{{$post->post}}"/></td>
            </tr>
        </table>
    </form>
    <input form=edit type="submit" name='confirmar' value="Salvar"/>
    <a href="/publicacoes"><button>Cancelar</button></a>
</x-dash-layout>