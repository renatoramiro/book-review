## Rota Raiz

`http://localhost:3000/api/`

### Comentários de um livro (GET)
`http://localhost:3000/api/books/:book_id/comments`

#### Resposta
```json
[
    {
        "id": 2,
        "book_id": 1,
        "body": "primeiro comentário",
        "created_at": "2018-07-24T23:23:11.964Z",
        "updated_at": "2018-07-26T22:55:16.084Z",
        "reader_id": 1
    },
    {
        "id": 6,
        "book_id": 1,
        "body": "segundo comentário do livro 1",
        "created_at": "2018-07-24T23:40:07.608Z",
        "updated_at": "2018-07-26T23:10:32.232Z",
        "reader_id": 2
    }
]
```

### Obter 1 comentário de um livro (GET)
`http://localhost:3000/api/books/:book_id/comments/:id`

#### Resposta
```json
{
    "id": 2,
    "book_id": 1,
    "body": "primeiro comentário",
    "created_at": "2018-07-24T23:23:11.964Z",
    "updated_at": "2018-07-26T22:55:16.084Z",
    "reader_id": 1
}
```

### Adicionar comentário para um livro (POST)
`http://localhost:3000/api/books/:book_id/comments`

#### Requisição
```json
{
	"comment": {
		"body": "Comentário sobre o livro",
		"reader_id": 1
	}
}
```

### Atualizar comentário de um livro (PUT/PATCH)
`http://localhost:3000/api/books/:book_id/comments/:id`

#### Requisição
```json
{
	"comment": {
		"body": "comentário atualizado",
	}
}
```

### Remover comentário de um livro (DELETE)
`http://localhost:3000/api/books/:book_id/comments/:id`