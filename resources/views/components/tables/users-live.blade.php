<div x-data="{
    idmodal:null,
}">
<table {{ $attributes->merge(['class' => 'table table-' . $type]) }}>
    @vite('resources/css/table.css')
    <thead>
        <tr>
            <th><a href="#" wire:click='orderBy'>Id</a></th>
            <th><a href="#" wire:click='orderByName'>Nome</a></th>
            <th>Email</th>
            <th>Profissão</th>
            @if (Auth::user())
                <th colspan="2">Ações</th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($usuarios as $usuario)
            <tr>
                @if (Auth::user())
                    <td><a href="{{ route('usuario.single-dash', $usuario->id) }}">{{ $usuario->id }}</a></td>
                    <td><a href="{{ route('usuario.single-dash', $usuario->id) }}">{{ $usuario->nome }}</a></td>
                    <td><a href="{{ route('usuario.single-dash', $usuario->id) }}">{{ $usuario->email }}</a></td>
                    <td><a href="{{ route('usuario.single-dash', $usuario->id) }}">{{ $usuario->profissao }}</a></td>
                @else
                    <td><a href="/usuarios/{{ $usuario->id }}">{{ $usuario->id }}</a></td>
                    <td><a href="/usuarios/{{ $usuario->id }}">{{ $usuario->nome }}</a></td>
                    <td><a href="{{ route('usuario.single-dash', $usuario->id) }}">{{ $usuario->email }}</a></td>
                    <td><a href="{{ route('usuario.single-dash', $usuario->id) }}">{{ $usuario->profissao }}</a></td>
                @endif

                <td>{{ $usuario->telefone }}</td>
                <td>{{ $usuario->endereco }}</td>
                @if (Auth::user())
                    <td class='actions'>
                        <x-primary-button class='px-2 py-1 mx-0 my-0'
                        @click=" idmodal = 'modal-upd-{{ $usuario->id }}'">
                            Atualizar
                        </x-primary-button>
                    </td>
                    <td class='actions'>
                        <x-danger-button class='px-2 py-1 mx-0 my-0'
                        @click=" idmodal = 'modal-rm-{{ $usuario->id }}'">
                            Remover
                        </x-danger-button>
                    </td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>
@foreach ($usuarios as $usuario)
    <x-modals.usuario-modal
        id="{{'modal-rm-'.$usuario->id}}"
        trigger="idmodal"
        >
        <x-slot name="title">{{$usuario->nome.' ('.$usuario->id.')'}}</x-slot>
        <x-modals.forms.usuario-remove :usuario="$usuario"/>
    </x-forms.usuario-modal>
@endforeach
@foreach ($usuarios as $usuario)
    <x-modals.usuario-modal
        id="{{'modal-upd-'.$usuario->id}}"
        trigger="idmodal"
        >
        <x-slot name="title">{{$usuario->nome.' ('.$usuario->id.')'}}</x-slot>
        <x-modals.forms.usuario-update :usuario="$usuario"/>
    </x-forms.usuario-modal>
@endforeach
<div>