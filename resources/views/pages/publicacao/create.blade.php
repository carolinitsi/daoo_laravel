<x-main-layout>
    <h1>Insert new Post</h1>
    <form id=create action="/post" method="POST">
        @csrf
        {{-- <input type="hidden" name="_token" value="{{csrf_token()}}"/> --}}
        <table>
            <tr>
                <td>Assunto:</td>
                <td><input type="text" name="assunto"/></td>
            </tr>
            <tr>
                <td>Publicação:</td>
                <td><input type="text" name="post"/></td>
            </tr>
            <tr>
                <td>email:</td>
                <td><input name="email" id="" type="email"/></td>
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