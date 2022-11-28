<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuarios</title>
</head>
<body>
    @if ($usuario)
        <h1>{{ $usuario->nome }}</h1>
        <p>{{ $usuario->email }}</p>
        <ul>
            <li>Competencias: {{ $usuario->competencias }}</li>
        </ul>
    @else
        <p>Produtos não encontrados! </p>
    @endif
    <a href="/usuario">&#9664;Voltar</a>
</body>
</html>