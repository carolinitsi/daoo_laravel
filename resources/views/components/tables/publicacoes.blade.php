<table {{ $attributes->merge(['class' => 'table table-' . $type]) }}>
    @vite('resources/css/table.css')
    <thead>
        <tr>
            <th>Id</th>
            <th>Assunto</th>
            <th>Publicação</th>
            <th>Autor</th>
            @if(Auth::user() && Route::is('dashboard'))
                <th>Acoes</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($publicacoes as $publicacao)
            <tr>
                @if(Auth::user() && Route::is('dashboard'))
                     <td><a href="{{route('publicacao.single-dash',$publicacao->id) }}">{{ $publicacao->id }}</a></td>
                     <td><a href="{{route('publicacao.single-dash',$publicacao->id) }}">{{ $publicacao->assunto }}</a></td>
                     <td><a href="{{route('publicacao.single-dash',$publicacao->id) }}">{{ $publicacao->publicacao }}</a></td>
                     <td><a href="{{route('publicacao.single-dash',$publicacao->id) }}">{{ $publicacao->id_user }}</a></td>
                @else
                    <td><a href="/publicacoes/{{ $publicacao->id }}">{{ $publicacao->id }}</a></td>
                    <td><a href="/publicacoes/{{ $publicacao->id }}">{{ $publicacao->assunto }}</a></td>
                    <td><a href="{{route('publicacao.single-dash',$publicacao->id) }}">{{ $publicacao->publicacao }}</a></td>
                    <td><a href="{{route('publicacao.single-dash',$publicacao->id) }}">{{ $publicacao->id_user }}</a></td>
                @endif
                
                @if(Auth::user() && Route::is('dashboard'))
                    <td><a href="{{ route('edit', $publicacao->id) }}">editar</a> |
                        <a href="{{ route('delete', $publicacao->id) }}">deletar</a>
                    </td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>