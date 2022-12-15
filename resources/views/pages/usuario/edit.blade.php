<x-dash-layout>
    <h1>Editar:</h1>
    <form id=edit action="{{route('update',$usuario->id)}}" method="POST">
        @csrf
        <table>
            <tr>
                <td>Nome:</td>
                <td><input type="text" name="nome" value="{{$usuario->nome}}"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="{{$usuario->email}}"/></td>
            </tr>
            <tr>
                <td>Profissão:</td>
                <td><input type="text" name="profissao" value="{{$usuario->profissao}}"/></td>
            </tr>
        </table>
    </form>
    <input form=edit type="submit" name='confirmar' value="Salvar"/>
    <a href="/dashboard"><button>Cancelar</button></a>
</x-dash-layout>