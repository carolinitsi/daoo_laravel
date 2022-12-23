<div class="flex flex-col justify-center w-fit dark:bg-gray-700 h-auto m-0 p-3 bg-white self-center">
    <p>{{ $publicacao->nome }}</p>
    <ul>
        <li>Email: {{ $publicacao->email }}</li>
        <li>Profissão: {{ $publicacao->profissao }}</li>
        <li>Competências: {{ $publicacao->competencias }}</li>
    </ul>
    <form id="{{ $publicacao->id }}" wire:submit.prevent="remove({{ $publicacao->id }})" method="POST">
        <h4 style="color:red;font-weight:bold">Confirmar a exclusão deste publicacao?</h4>
    </form>
    <table>
        <tr align="center">
            <td>
                <x-secondary-button  @click="idmodal=null">
                    Cancelar
                </x-secondary-button>
            </td>
            <td>
                <x-danger-button
                    class='px-2 py-1 mx-0 my-0'
                    @click="idmodal=null;"
                    form="{{ $publicacao->id }}"
                    type="submit"
                    name='confirmar'
                    >
                    Deletar
                </x-danger-button>
            </td>
        </tr>
    </table>
</div>