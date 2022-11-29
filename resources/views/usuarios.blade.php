<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuarios</title>
</head>
<body>
    <h1>Lista de usuárias:</h1>
    @if ($usuarios->count()>0)
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            @foreach($usuarios as $usuario)
            <tr>
                <td><a href="/usuario/{{$usuario->id}}">{{$usuario->id}}</a></td>
                <td>{{$usuario->nome}}</td>
                <td>{{$usuario->email}}</td>
                <td>
                    <a href="{{route('delete',$usuario->id)}}" title="Deletar">&#128465</a>
                    <a href="{{route('edit',$usuario->id)}}" title="Editar">Editar</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
    <p>Produtos não encontrados! </p>
    @endif
</body>
</html>