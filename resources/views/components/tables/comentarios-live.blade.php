<div x-data="{
    idmodal:null,
}">
<table {{ $attributes->merge(['class' => 'table table-' . $type]) }}>
    @vite('resources/css/table.css')
    <thead>
        <tr>
            <th><a href="#" wire:click='orderByName'>comentario</a></th>
            
            @if (Auth::user())
                <th colspan="2">Ações</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($comentarios as $comentario)
            <tr>
                @if (Auth::user())
                    <td><a href="{{ route('comentario.single-dash', $comentario->id) }}">{{ $comentario->id }}</a></td>
                    <td><a href="{{ route('comentario.single-dash', $comentario->id) }}">{{ $comentario->comentario }}</a></td>
            
                @else
                    <td><a href="/comentarios/{{ $comentario->id }}">{{ $comentario->id }}</a></td>
                    <td><a href="/comentarios/{{ $comentario->id }}">{{ $comentario->comentario }}</a></td>
                @endif
                @if (Auth::user())
                    <td class='actions'>
                        <x-primary-button class='px-2 py-1 mx-0 my-0'
                        @click=" idmodal = 'modal-upd-{{ $comentario->id }}'">
                            Atualizar
                        </x-primary-button>
                    </td>
                    <td class='actions'>
                        <x-danger-button class='px-2 py-1 mx-0 my-0'
                        @click=" idmodal = 'modal-rm-{{ $comentario->id }}'">
                            Remover
                        </x-danger-button>
                    </td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>

<div>