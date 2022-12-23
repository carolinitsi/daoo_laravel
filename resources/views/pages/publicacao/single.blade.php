<x-main-layout>
<div class="text-center mt-8">
    @vite('resources/css/show-prod.css')
    @if ($post)
        <h1 class='my-12 text-4xl font-bold'>{{ $post->nome }}</h1>
        <table>
            </thead>
            <tbody>
                <tr>
                    <th>Email</th>
                    <td>{{ $post->email }}</td>
                </tr>
                <tr>
                    <th>Profissão</th>
                    <td>{{ $post->profissao }}</td>
                </tr>
                <tr>
                    <th>Competencias</th>
                    <td>{{ $post->competencias }}</td>
                </tr>
                <tr>
                    <th>Competencias</th>
                    <td>{{ $post->competencias }}</td>
                </tr>
            </tbody>
        </table>

        <a href="{{ route('edit', $post->id) }}"><button>editar</button></a>
        <a href="{{ route('delete', $post->id) }}"><button>deletar</button></a>
    @else
        <p>Publicações não encontrados! </p>
    @endif
    <div>
        <a href="/post">Voltar</a>
    </div>
</div>
</x-main-layout>