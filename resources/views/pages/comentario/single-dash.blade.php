<x-dash-layout>
<div class="text-center mt-8">
    @vite('resources/css/show-prod.css')
    @if ($comentario)
        <h1 class='my-12 text-4xl font-bold'>{{ $comentario->nome }}</h1>
        <table>
            </thead>
            <tbody>
                <tr>
                    <th>Id</th>
                    <td>{{ $comentario->id }}</td>
                </tr>
                <tr>
                    <th>Comentario</th>
                    <td>{{ $comentario->comentario }}</td>
                </tr>
            </tbody>
        </table>
        <a href="{{ route('edit', $comentario->id) }}"><button>editar</button></a>
        <a href="{{ route('delete', $comentario->id) }}"><button>deletar</button></a>
    @else
        <p>Comentário não encontrado! </p>
    @endif
    <div>
        <a href="/dashboard">&#9664;Voltar</a>
    </div>
</div>
</x-dash-layout>