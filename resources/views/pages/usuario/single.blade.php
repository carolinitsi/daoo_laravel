<x-main-layout>
<div class="text-center mt-8">
    @vite('resources/css/show-prod.css')
    @if ($usuario)
        <h1 class='my-12 text-4xl font-bold'>{{ $usuario->nome }}</h1>
        <table>
            </thead>
            <tbody>
                <tr>
                    <th>Email</th>
                    <td>{{ $usuario->email }}</td>
                </tr>
                <tr>
                    <th>Profissão</th>
                    <td>{{ $usuario->profissao }}</td>
                </tr>
                <tr>
                    <th>Competencias</th>
                    <td>{{ $usuario->competencias }}</td>
                </tr>
                <tr>
                    <th>Competencias</th>
                    <td>{{ $usuario->competencias }}</td>
                </tr>
            </tbody>
        </table>

        <a href="{{ route('edit', $usuario->id) }}"><button>editar</button></a>
        <a href="{{ route('delete', $usuario->id) }}"><button>deletar</button></a>
    @else
        <p>Usuario não encontrados! </p>
    @endif
    <div>
        <a href="/dashboard">Voltar</a>
    </div>
</div>
</x-main-layout>