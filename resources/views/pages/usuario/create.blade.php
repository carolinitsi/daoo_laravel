<x-main-layout>
    <h1>Insert new Usuário</h1>
    <form id=create action="/usuario" method="POST">
        @csrf
        {{-- <input type="hidden" name="_token" value="{{csrf_token()}}"/> --}}
        <table>
            <tr>
                <td>Id:</td>
                <td><input type="text" name="id"/></td>
            </tr>
            <tr>
                <td>Nome:</td>
                <td><input type="text" name="nome"/></td>
            </tr>
            <tr>
                <td>email:</td>
                <td><input name="email" id="" type="email"/></td>
            </tr>
            <tr>
                <td>Profissão:</td>
                <td><input type="text" name="profissao"/></td>
            </tr>
            <tr>
                <td>Competencias:</td>
                <td><input type="text" name="competencias"/></td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><input type="password" name="senha"/></td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" value="Criar"/></td>
            </tr>
            <tr align="center">
                <td colspan="2"><a href="/dashboard" style="display: inline">&#9664;&nbsp;Voltar</a></td>
            </tr>
        </table>
    </form>
</x-main-layout>