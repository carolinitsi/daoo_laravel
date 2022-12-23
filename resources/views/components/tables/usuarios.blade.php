<table {{ $attributes->merge(['class' => 'table table-' . $type]) }}>
    @vite('resources/css/table.css')
    <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>email</th>
            <th>profissao</th>
            <th>competencias</th>
            @if(Auth::user() && Route::is('dashboard'))
                <th>Acoes</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($usuarios as $usuario)
            <tr>
                @if(Auth::user() && Route::is('dashboard'))
                     <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->id }}</a></td>
                     <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->nome }}</a></td>
                     <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->email }}</a></td>
                     <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->profissao }}</a></td>
                     <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->competencias }}</a></td>
                @else
                    <td><a href="/usuarios/{{ $usuario->id }}">{{ $usuario->id }}</a></td>
                    <td><a href="/usuarios/{{ $usuario->id }}">{{ $usuario->nome }}</a></td>
                    <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->email }}</a></td>
                    <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->profissao }}</a></td>
                    <td><a href="{{route('usuario.single-dash',$usuario->id) }}">{{ $usuario->competencias }}</a></td>
                @endif
                
                @if(Auth::user() && Route::is('dashboard'))
                    <td><a href="{{ route('edit', $usuario->id) }}">editar</a> |
                        <a href="{{ route('delete', $usuario->id) }}">deletar</a>
                    </td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>