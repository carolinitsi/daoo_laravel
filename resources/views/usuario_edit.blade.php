<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Editar usuário</h1>
    <form action="{{route('update',$usuario->id)}}" method="POST">
        @csrf
        <table>
            <tr>
                <td>Nome:</td>
                <td><input type="text" name="nome" value="{{$usuario->nome}}"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input name="email" id="" cols="30" rows="10" value="{{$usuario->email}}"/></td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><input type="text" name="senha" value="{{$usuario->senha}}"/></td>
            </tr>
            <tr>
                <td>Profissão:</td>
                <td><input type="text" name="profissao" value="{{$usuario->profissao}}"/></td>
            </tr>
            <tr>
                <td>competencias:</td>
                <td><input type="text" name="competencias" value="{{$usuario->competencias}}"/></td>
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