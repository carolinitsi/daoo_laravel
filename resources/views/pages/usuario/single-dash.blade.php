<x-dash-layout>
<div class="text-center mt-8">
    @vite('resources/css/show-prod.css')
    @if ($usuario)
        <h1 class='my-12 text-4xl font-bold'>{{ $usuario->nome }}</h1>
        <table>
            </thead>
            <tbody>
                <tr>
                    <th>Profissão</th>
                    <td>{{ $usuario->profissao }}</td>
                </tr>
                <tr>
                    <th>Competências</th>
                    <td>{{ $usuario->competencias }}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>{{ $usuario->email }}</td>                   
                </tr>
            </tbody>
        </table>
        <a href="{{ route('usuario.edit', $usuario->id) }}"><button>editar</button></a>
        <a href="{{ route('usuario.delete', $usuario->id) }}"><button>deletar</button></a>
    @else
        <p>Usuário não encontrados! </p>
    @endif
    <div>
        <a href="/dashboard">&#9664;Voltar</a>
    </div>
</div>
</x-dash-layout>