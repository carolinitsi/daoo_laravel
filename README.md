# Projeto Laravel

<p>Este repositório guarda o projeto desenvolvido durante a disciplina de Desenvolvimento de Aplicações Orientado a Objetos CSTSI. </p>
<p>O objetivo do trabalho foi desenvolver a camada de modelo do servidor. O projeto foi desenvolvido ao longo da disciplina e é formado por diversas atividades implementadas no decorrer do semestre.</p>
<p>A atividade final consiste em testar o funcionamento da camada de modelo através de uma API através de um cliente HTTP. Para isso foi organizada a seguinte documentação:</p>

## Documentação API

## USER

### Retornar todas as usuárias:
`GET /users`
### Retornar usuária por id:
`GET /users/{id}`
### Registrar uma nova usuária:
`POST /users`
### Parâmetros:

Campo	      | Descrição
--------------|------------------------------------
name	      | Obrigatório, max 50 caracteres
email	      | Obrigatório, único
password      |	Obrigatório, min 8 caracteres
profissao     |	Obrigatório
competencias  |	Obrigatório
Is_admin	  | Opcional – boolean – padrão falso

### Atualizar uma usuária:
`PUT /users/{id}`
### Deletar uma usuária:
`DELETE /users/{id}`
### Retornar publicações de uma usuária:
`GET /users/{id}/publicacoes`

## PUBLICAÇÕES

### Retornar todos as publicações:
`GET /publicacoes`
### Retornar publicação por id:
`GET /publicacoes/{id}`
### Registrar uma nova publicação:
`POST /publicacoes`
### Parâmetros:

Campo	      | Descrição
--------------|------------------------------------
assunto	      | Obrigatório - string
post	      | Obrigatório - string
user_id       |	Obrigatório - string

### Atualizar uma publicação:
`PUT /publicacoes/{id}`
### Deletar uma publicação:
`DELETE /publicacoes/{id}`
### Retornar comentários de uma publicação:
`GET /publicacoes/{id}/comentarios`

## COMENTÁRIOS

### Retornar todos os comentarios:
`GET /comentarios`
### Retornar publicação por id:
`GET /comentarios/{id}`
### Registrar um novo comentário: 
`POST /comentarios`

### Parâmetros:

Campo	      | Descrição
--------------|------------------------------------
comentario	  | Obrigatório - string - max 200
post_id       |	Obrigatório - numeric


### Atualizar um comentário:
`PUT / comentarios/{id}`
### Deletar um comentario:
`DELETE /comentarios/{id}`






