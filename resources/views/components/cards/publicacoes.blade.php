<div>
    <a href="{{ route('single', $publicacao->id) }}">
        <div
            class="w-64 h-80 py-3 mb-5 bg-green-400 border-2 border-blue-700 rounded-lg shadow-md shadow-green-700">
            <h6 class="text-center font-bold">Titulo: {{ $publicacao->assunto }}</h6>
            <p class="text-center">Publicação: {{ $publicacao->post }}</p>
        </div>
    </a>
</div>