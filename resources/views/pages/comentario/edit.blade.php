<x-dash-layout>
    <h1>Editar:</h1>
    <form id=edit action="{{route('update',$comentario->id)}}" method="POST">
        @csrf
        <table>
            <tr>
                <td>Editar Comentario:</td>
                <td><input type="text" name="nome" value="{{$comentario->comentario}}"/></td>
                <td><input type="text" name="nome" value="{{$comentario->post_id}}"/></td>
            </tr>
        </table>
    </form>
    <input form=edit type="submit" name='confirmar' value="Salvar"/>
    <a href="/dashboard"><button>Cancelar</button></a>
</x-dash-layout>