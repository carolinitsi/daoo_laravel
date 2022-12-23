<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h2 class='text-4xl'>Usuários</h2>
                    @if (isset($usuarios) && $usuarios->count() > 0)

                        <div style="display:flex; flex-direction: row; justify-content:flex-end">
                            <a href="/usuario"><button>Criar Novo usuario</button></a>
                        </div>
                        <x-tables.usuarios :usuarios="$usuarios" class='table-odd' type='hover' />
                    @else
                        <p>Usuarios não encontrados! </p>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h2 class='text-4xl'>Publicações</h2>
                    @if (isset($publicacoes) && $publicacoes->count() > 0)

                        <div style="display:flex; flex-direction: row; justify-content:flex-end">
                            <a href="/publicacao"><button>Criar Nova Publicação</button></a>
                        </div>
                        <x-tables.publicacoes :publicacoes="$publicacoes" class='table-odd' type='hover' />
                    @else
                        <p>Publicações não encontradaaaaaas! </p>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h2 class='text-4xl'>Usuários</h2>
                    @if (isset($comentarios) && $comentarios->count() > 0)

                        <div style="display:flex; flex-direction: row; justify-content:flex-end">
                            <a href="/comentario"><button>Criar Novo comentario</button></a>
                        </div>
                        <x-tables.comentarios :comentarios="$comentarios" class='table-odd' type='hover' />
                    @else
                        <p>Comentarios não encontrados! </p>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <h2 class='text-4xl'>Users</h2>
                    @if (isset($users) && $users->count() > 0)
                        <ul>
                            @foreach ($users as $user)
                                <li>{{ $user->name }}</li>
                            @endforeach
                        </ul>
                    @else
                        <p>Usuários não encontrados! </p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>