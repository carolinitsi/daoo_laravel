<div class="flex flex-col justify-center w-fit dark:bg-gray-700 h-auto m-0 p-3 bg-white self-center">
    <p>{{ $comentario->id }}</p>
    <ul>
        <li>Comentario: {{ $comentario->comentario }}</li>
    </ul>
    <form id="{{ $comentario->id }}" wire:submit.prevent="remove({{ $comentario->id }})" method="POST">
        <h4 style="color:red;font-weight:bold">Confirmar a exclusão deste comentario?</h4>
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
                    form="{{ $comentario->id }}"
                    type="submit"
                    name='confirmar'
                    >
                    Deletar
                </x-danger-button>
            </td>
        </tr>
    </table>
</div>