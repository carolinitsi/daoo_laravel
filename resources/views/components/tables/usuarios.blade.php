<table>
    <thead style="background-color:gray; color:black">
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>Email</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($usuarios as $usuario)
            <tr style="background-color: lightgray">
                <td><a href="/usuarios/{{ $usuario->id }}">{{ $usuario->id }}</a></td>
                <td>{{ $usuario->nome }}</td>
                <td>{{ $usuario->email }}</td>
               
                <td><a href="{{ route('edit', $usuario->id) }}">editar</a> |
                    <a href="{{ route('delete', $usuario->id) }}">deletar</a>
                </td>
            </tr>
        @endforeach
     
    </tbody>
</table>