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
        <h1>Informações:</h1>
        <p>Nome:{{ $usuario->nome }}</p>
        <p>Email:{{ $usuario->email }}</p>
        <p>Competencias: {{ $usuario->competencias }}</p>
    @else
        <p>Produtos não encontrados! </p>
    @endif
    <a href="/usuarios">&#9664;Voltar</a>
</body>
</html>