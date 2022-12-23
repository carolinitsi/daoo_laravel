<x-dash-layout>
<div class="text-center mt-8">
    @vite('resources/css/show-prod.css')
    @if ($publicacao)
        <h1 class='my-12 text-4xl font-bold'>{{ $publicacao->nome }}</h1>
        <table>
            </thead>
            <tbody>
                <tr>
                    <th>Assunto</th>
                    <td>{{ $publicacao->assunto }}</td>
                </tr>
                <tr>
                    <th>Publicação</th>
                    <td>{{ $publicacao->post }}</td>
                </tr>
            </tbody>
        </table>
        <a href="{{ route('edit', $publicacao->id) }}"><button>editar</button></a>
        <a href="{{ route('delete', $publicacao->id) }}"><button>deletar</button></a>
    @else
        <p>Publicação não encontrada! </p>
    @endif
    <div>
        <a href="/dashboard">&#9664;Voltar</a>
    </div>
</div>
</x-dash-layout>