<div class="flex flex-col justify-center w-fit shadow dark:bg-gray-700 h-fit m-0 p-3 bg-white self-center rounded-md">
    <div x-data="{
        publicacao: @js($publicacao),
        update() {
           
            if (this.publicacao.nome &&
                this.publicacao.email) {
                console.log({ publicacao: this.publicacao });
                $wire.set('nome', this.publicacao.nome)
                $wire.set('email', this.publicacao.email)
                $wire.set('profissao', this.publicacao.profissao)
                $wire.set('competencias', this.publicacao.competencias)

                $wire.update(this.publicacao.id)
            } else {
                alert('Erro ao atualizar publicacao!')
            }
        },
    }" x-init="start()">
        <form @submit.prevent="update()" id="publicacao-update-{{ $publicacao->id }}">
            <table>
                <tr>
                    <td>Assunto:</td>
                    <td><input x-model="publicacao.assunto" type="text" name="assunto" /></td>
                </tr>
                <tr>
                    <td>Publicação:</td>
                    <td><input x-model="publicacao.post" type="text" name="post" /></td>
                </tr>
                <tr>
                    <td>Autor:</td>
                    <td><input x-model="publicacao.id_user" type="text" name="id_user" /></td>
                </tr>                
        </form>
        <div class='flex justify-center gap-24 w-full'>
            <x-secondary-button @click="idmodal=null">
                Cancelar
            </x-secondary-button>
            <x-primary-button form="publicacao-update-{{ $publicacao->id }}" @click="idmodal=null">
                Atualizar
            </x-primary-button>
        </div>
    </div>
</div>


