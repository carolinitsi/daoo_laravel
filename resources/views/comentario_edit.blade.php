<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Editar comentário</h1>
    <form action="{{route('update',$comentario->id)}}" method="POST">
        @csrf
        <table>
            <tr>
                <td>id:</td>
                <td><input type="text" name="id" value="{{$comentario->id}}"/></td>
            </tr>
            <tr>
                <td>Comentário:</td>
                <td><input name="comentario" id="" cols="30" rows="10" value="{{$comentario->comentario}}"/></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" name='confirmar' value="Salvar"/>
                    <input type="submit" name='confirmar' value="Cancelar"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>