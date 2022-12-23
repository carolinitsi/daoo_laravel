<div x-data="{
    idmodal:null,
}">
<table {{ $attributes->merge(['class' => 'table table-' . $type]) }}>
    @vite('resources/css/table.css')
    <thead>
        <tr>
            <th><a href="#" wire:click='orderBy'>Id</a></th>
            <th><a href="#" wire:click='orderByName'>Assunto</a></th>
            <th>Publicação</th>
            <th>Autor</th>
            @if (Auth::user())
                <th colspan="2">Ações</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($publicacoes as $publicacao)
            <tr>
                @if (Auth::user())
                    <td><a href="{{ route('publicacao.single-dash', $publicacao->id) }}">{{ $publicacao->id }}</a></td>
                    <td><a href="{{ route('publicacao.single-dash', $publicacao->id) }}">{{ $publicacao->assunto }}</a></td>
                    <td><a href="{{ route('publicacao.single-dash', $publicacao->id) }}">{{ $publicacao->post }}</a></td>
                    <td><a href="{{ route('publicacao.single-dash', $publicacao->id) }}">{{ $publicacao->id_user }}</a></td>
                @else
                    <td><a href="/publicacoes/{{ $publicacao->id }}">{{ $publicacao->id }}</a></td>
                    <td><a href="/publicacoes/{{ $publicacao->id }}">{{ $publicacao->assunto }}</a></td>
                    <td><a href="{{ route('publicacao.single-dash', $publicacao->id) }}">{{ $publicacao->post }}</a></td>
                    <td><a href="{{ route('publicacao.single-dash', $publicacao->id) }}">{{ $publicacao->id_user }}</a></td>
                @endif

                @if (Auth::user())
                    <td class='actions'>
                        <x-primary-button class='px-2 py-1 mx-0 my-0'
                        @click=" idmodal = 'modal-upd-{{ $publicacao->id }}'">
                            Atualizar
                        </x-primary-button>
                    </td>
                    <td class='actions'>
                        <x-danger-button class='px-2 py-1 mx-0 my-0'
                        @click=" idmodal = 'modal-rm-{{ $publicacao->id }}'">
                            Remover
                        </x-danger-button>
                    </td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>
@foreach ($publicacoes as $publicacao)
    <x-modals.publicacao-modal
        id="{{'modal-rm-'.$publicacao->id}}"
        trigger="idmodal"
        >
        <x-slot name="title">{{$publicacao->nome.' ('.$publicacao->id.')'}}</x-slot>
        <x-modals.forms.publicacao-remove :publicacao="$publicacao"/>
    </x-forms.publicacao-modal>
@endforeach
@foreach ($publicacoes as $publicacao)
    <x-modals.publicacao-modal
        id="{{'modal-upd-'.$publicacao->id}}"
        trigger="idmodal"
        >
        <x-slot name="title">{{$publicacao->nome.' ('.$publicacao->id.')'}}</x-slot>
        <x-modals.forms.publicacao-update :publicacao="$publicacao"/>
    </x-forms.publicacao-modal>
@endforeach
<div>