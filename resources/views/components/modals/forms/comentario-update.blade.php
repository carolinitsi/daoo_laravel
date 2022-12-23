<div class="flex flex-col justify-center w-fit shadow dark:bg-gray-700 h-fit m-0 p-3 bg-white self-center rounded-md">
    <div x-data="{
        comentario: @js($comentario),
        update() {
           
            if (this.comentario.nome &&
                this.comentario.email) {
                console.log({ comentario: this.comentario });
                $wire.set('nome', this.comentario.nome)
                $wire.set('email', this.comentario.email)
                $wire.set('profissao', this.comentario.profissao)
                $wire.set('competencias', this.comentario.competencias)

                $wire.update(this.comentario.id)
            } else {
                alert('Erro ao atualizar comentario!')
            }
        },
    }" x-init="start()">
        <form @submit.prevent="update()" id="comentario-update-{{ $comentario->id }}">
            <table>
                <tr>
                    <td>Comentario:</td>
                    <td><input x-model="comentario.comentario" type="text" name="comentario" /></td>
                </tr>
            </table>
        </form>
        <div class='flex justify-center gap-24 w-full'>
            <x-secondary-button @click="idmodal=null">
                Cancelar
            </x-secondary-button>
            <x-primary-button form="comentario-update-{{ $comentario->id }}" @click="idmodal=null">
                Atualizar
            </x-primary-button>
        </div>
    </div>
</div>


