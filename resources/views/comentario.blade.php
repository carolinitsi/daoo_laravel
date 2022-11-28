<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuarios</title>
</head>
<body>
    @if ($comentario)
        <h1>{{ $comentario->id }}</h1>
        <p>{{ $comentario->comentario }}</p>
    @else
        <p>Comentario não encontrado! </p>
    @endif
    <a href="/comentario">&#9664;Voltar</a>
</body>
</html>