## Rota Raiz

`http://localhost:3000/api/`

### Listar Estante de livros de um leitor (GET)
`http://localhost:3000/api/readers/:reader_id/bookcases`

#### Resposta
```json
[
    {
        "id": 1,
        "book_id": 1,
        "reader_id": 1,
        "evaluation": 4,
        "created_at": "2018-07-26T22:35:25.282Z",
        "updated_at": "2018-07-26T22:35:25.282Z"
    },
	{
        "id": 2,
        "book_id": 2,
        "reader_id": 1,
        "evaluation": 3,
        "created_at": "2018-07-26T22:35:25.282Z",
        "updated_at": "2018-07-26T22:35:25.282Z"
    }
]
```

### Obter 1 registro da estante do leitor (GET)
`http://localhost:3000/api/readers/:reader_id/bookcases/:id`

#### Resposta
```json
{
    "id": 1,
    "book_id": 1,
    "reader_id": 1,
    "evaluation": 4,
    "created_at": "2018-07-26T22:35:25.282Z",
    "updated_at": "2018-07-26T22:35:25.282Z"
}
```

### Adicionar um livro na estante do leitor (POST)
`http://localhost:3000/api/readers/:reader_id/bookcases`

#### Requisição
```json
{
	"bookcase": {
		"book_id": 1,
	    "evaluation": 2
	}
}
```

### Atualizar um livro da estante do leitor (PUT/PATCH)
`http://localhost:3000/api/readers/:reader_id/bookcases/:id`

#### Requisição
```json
{
	"bookcase": {
	    "evaluation": 3
	}
}
```

### Remover um livro da estante do leitor (DELETE)
`http://localhost:3000/api/readers/:reader_id/bookcases/:id`