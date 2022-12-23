<x-dash-layout>
    @if ($usuario)
        <h1>{{ $usuario->nome }}</h1>
        
        <form action="{{ route('remove', $usuario->id) }}" method="post">
            @csrf
            <h4 style="color:red;font-weight:bold">Confirmar a exclusão deste usuario?</h4>
            <input type="submit" name='confirmar' value="Deletar" />
            <input type="submit" name='confirmar' value="Cancelar" />
        </form>
    @else
        <p>Usuário não encontrados! </p>
        <a href="/dashboard">&#9664;Voltar</a>
    @endif
</x-dash-layout>