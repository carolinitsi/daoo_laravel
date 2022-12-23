<div x-data="{ open: false }" class='flex justify-center'>
    <x-modals.forms.publicacao-create />
    <div class="w-full lg:w-5/6">
        <div class="py-3 pr-5 flex justify-start">
            <x-primary-button @click="open = true">Nova Publicação</x-primary-button>
        </div>
        @if (isset($publicacoes) && $publicacoes->count() > 0)
            <x-tables.publicacoes-live :publicacoes="$publicacoes" class='table-odd' type='hover' />
        @else
            <p>Publicações não encontradaaaaas! </p>
        @endif
    </div>
</div>