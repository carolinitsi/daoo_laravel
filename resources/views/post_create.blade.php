<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Novo Usuário:</h1>
    <form action="/post" method="POST">
        @csrf
        <!-- <input type="hidden" name="_token" value="{{csrf_token()}}"/> -->
        <table>
            <tr>
                <td>Id:</td>
                <td><input type="text" name="id"/></td>
            </tr>
            <tr>
                <td>Assunto:</td>
                <td><input type="text" name="assunto"/></td>
            </tr>
            <tr>
                <td>Post:</td>
                <td><input name="email" id="" type="post"/></td>
            </tr>
            
            <tr align="center">
                <td colspan="2"><input type="submit" value="Criar"/></td>
            </tr>
            <tr align="center">
                <td colspan="2"><a href="/posts" style="display: inline">&#9664;&nbsp;Voltar</a></td>
            </tr>
        </table>
    </form>
</body>

</html>