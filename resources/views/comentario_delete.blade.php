<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de comentarios</title>
</head>
<body>
    @if ($comentario)
        <h1>{{ $comentario->id }}</h1>
        <p>{{ $comentario->comentario }}</p>
        <form action="{{route('remove',$comentario->id)}}" method="post">
            @csrf
            <h4 style="color:red;font-weight:bold">Confirmar a exclusão?</h4>
            <table>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" name='confirmar' value="Deletar"/>
                        <input type="submit" name='confirmar' value="Cancelar"/>
                    </td>
                </tr>
            </table>
        </form>
    @else
        <p>Produtos não encontrados! </p>
        <a href="/comentarios">&#9664;Voltar</a>
    @endif
</body>
</html>