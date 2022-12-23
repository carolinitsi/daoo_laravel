<x-dash-layout>
    @if ($post)
        <h1>{{ $post->nome }}</h1>
        
        <form action="{{ route('remove', $post->id) }}" method="post">
            @csrf
            <h4 style="color:red;font-weight:bold">Confirmar a exclusão desta publicação?</h4>
            <input type="submit" name='confirmar' value="Deletar" />
            <input type="submit" name='confirmar' value="Cancelar" />
        </form>
    @else
        <p>Publicação não encontrada! </p>
        <a href="/dashboard">&#9664;Voltar</a>
    @endif
</x-dash-layout>