<div x-data="{ open: false }" class='flex justify-center'>
    <x-modals.forms.comentario-create />
    <div class="w-full lg:w-5/6">
        <div class="py-3 pr-5 flex justify-start">
            <x-primary-button @click="open = true">Novo comentario</x-primary-button>
        </div>
        @if (isset($comentarios) && $comentarios->count() > 0)
            <x-tables.comentarios-live :comentarios="$comentarios" class='table-odd' type='hover' />
        @else
            <p>Comentarios não encontrados! </p>
        @endif
    </div>
</div>