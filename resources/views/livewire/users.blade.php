<div x-data="{ open: false }" class='flex justify-center'>
    <x-modals.forms.usuario-create />
    <div class="w-full lg:w-5/6">
        <div class="py-3 pr-5 flex justify-start">
            <x-primary-button @click="open = true">Novo Usuario</x-primary-button>
        </div>
        @if (isset($usuarios) && $usuarios->count() > 0)
            <x-tables.users-live :usuarios="$usuarios" class='table-odd' type='hover' />
        @else
            <p>Usuarios não encontrados! </p>
        @endif
    </div>
</div>