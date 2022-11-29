<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Comentarios</title>
</head>
<body>
    <h1>Comentários</h1>
    @if ($comentarios->count()>0)
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Comentario:</th>
            </tr>
        </thead>
        <tbody>
            @foreach($comentarios as $comentario)
            <tr>
                <td><a href="/comentario/{{$comentario->id}}">{{$comentario->id}}</a></td>
                <td>{{$comentario->comentario}}</td>
                <td>
                    <a href="{{route('delete',$comentario->id)}}" title="Deletar">&#128465</a>
                    <a href="{{route('edit',$comentario->id)}}" title="Editar">Editar</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
    <p>Comentarios não encontrados! </p>
    @endif
</body>
</html>