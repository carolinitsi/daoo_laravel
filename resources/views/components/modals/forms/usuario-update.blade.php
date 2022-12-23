<div class="flex flex-col justify-center w-fit shadow dark:bg-gray-700 h-fit m-0 p-3 bg-white self-center rounded-md">
    <div x-data="{
        usuario: @js($usuario),
        update() {
           
            if (this.usuario.nome &&
                this.usuario.email) {
                console.log({ usuario: this.usuario });
                $wire.set('nome', this.usuario.nome)
                $wire.set('email', this.usuario.email)
                $wire.set('profissao', this.usuario.profissao)
                $wire.set('competencias', this.usuario.competencias)

                $wire.update(this.usuario.id)
            } else {
                alert('Erro ao atualizar usuario!')
            }
        },
    }" x-init="start()">
        <form @submit.prevent="update()" id="usuario-update-{{ $usuario->id }}">
            <table>
                <tr>
                    <td>Nome:</td>
                    <td><input x-model="usuario.nome" type="text" name="nome" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input x-model="usuario.email" type="text" name="email" /></td>
                </tr>
                <tr>
                    <td>Profissão:</td>
                    <td><input x-model="usuario.profissao" type="text" name="profissao"/></td>
                </tr>
                <tr>
                    <td>Competências:</td>
                    <td><input x-model="usuario.competencias" type="text" name="competencias"/></td>
                </tr>
            </table>
        </form>
        <div class='flex justify-center gap-24 w-full'>
            <x-secondary-button @click="idmodal=null">
                Cancelar
            </x-secondary-button>
            <x-primary-button form="usuario-update-{{ $usuario->id }}" @click="idmodal=null">
                Atualizar
            </x-primary-button>
        </div>
    </div>
</div>


