<table {{ $attributes->merge(['class' => 'table table-' . $type]) }}>
    @vite('resources/css/table.css')
    <thead>
        <tr>
            <th>Id</th>
            <th>Comentario</th>
            @if(Auth::user() && Route::is('dashboard'))
                <th>Acoes</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($comentarios as $comentario)
            <tr>
                @if(Auth::user() && Route::is('dashboard'))
                     <td><a href="{{route('comentario.single-dash',$comentario->id) }}">{{ $comentario->id }}</a></td>
                     <td><a href="{{route('comentario.single-dash',$comentario->id) }}">{{ $comentario->comentario }}</a></td>
                    
                @else
                    <td><a href="/comentarios/{{ $comentario->id }}">{{ $comentario->id }}</a></td>
                    <td><a href="/comentarios/{{ $comentario->id }}">{{ $comentario->comentario }}</a></td>
                @endif
                
                @if(Auth::user() && Route::is('dashboard'))
                    <td><a href="{{ route('edit', $comentario->id) }}">editar</a> |
                        <a href="{{ route('delete', $comentario->id) }}">deletar</a>
                    </td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>