<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuarios</title>
</head>
<body>
    @if ($post)
        <h1>{{ $post->assunto }}</h1>
        <p>{{ $post->post }}</p>
    @else
        <p>Publicação não encontrada! </p>
    @endif
    <a href="/post">&#9664;Voltar</a>
</body>
</html>