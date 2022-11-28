<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Publicações</title>
</head>
<body>
    <h1>Publicações</h1>
    @if ($posts->count()>0)
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Assunto:</th>
            </tr>
        </thead>
        <tbody>
            @foreach($posts as $post)
            <tr>
                <td><a href="/post/{{$post->id}}">{{$post->id}}</a></td>
                <td>{{$post->assunto}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
    <p>Publicações não encontradas! </p>
    @endif
</body>
</html>