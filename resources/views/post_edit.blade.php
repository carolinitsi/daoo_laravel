<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Editar publicação:</h1>
    <form action="{{route('update',$post->id)}}" method="POST">
        @csrf
        <table>
            <tr>
                <td>Assunto:</td>
                <td><input type="text" name="assunto" value="{{$post->assunto}}"/></td>
            </tr>
            <tr>
                <td>Publicação:</td>
                <td><input name="publicacao" id="" cols="30" rows="10" value="{{$post->post}}"/></td>
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