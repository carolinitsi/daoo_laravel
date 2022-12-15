<x-main-layout>
    <h2 class='text-4xl'>Usuarios</h2>
    @if (isset($usuarios) && $usuarios->count() > 0)
        <x-tables.usuarios :usuarios="$usuarios" class='table-odd' type='hover'/>
        @auth
            <div style="display:flex; flex-direction: row; justify-content:flex-end">
                <a href="/usuario"><button>Criaaar Novoo usuário</button></a>
            </div>
        @endauth
    @else
        <p>Usuários não encontrados! </p>
    @endif
</x-main-layout>