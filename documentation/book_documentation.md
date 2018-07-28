## Rota Raiz

`http://localhost:3000/api/`

### Listar livros (GET)
`http://localhost:3000/api/books`

#### Resposta
```json
    [
        {
            "id": 1,
            "title": "Livro 1",
            "author": "Renato Ramiro",
            "number_of_pages": 1200,
            "review": "Review 1",
            "created_at": "2018-07-24T23:09:54.542Z",
            "updated_at": "2018-07-24T23:09:54.542Z"
        },
        {
            "id": 2,
            "title": "Livro 2",
            "author": "José da Silva",
            "number_of_pages": 100,
            "review": "Review 2",
            "created_at": "2018-07-24T23:12:00.795Z",
            "updated_at": "2018-07-24T23:12:00.795Z"
        },
        {
            "id": 3,
            "title": "Livro 3",
            "author": "Maria José",
            "number_of_pages": 300,
            "review": "Review 3",
            "created_at": "2018-07-24T23:12:54.373Z",
            "updated_at": "2018-07-24T23:12:54.373Z"
        }
    ]
```

### Busca por livros (GET)
`http://localhost:3000/api/books/search`

##### Parametro:
`search`

##### Exemplo
`http://localhost:3000/api/books/search?search=Rails`

#### Resposta
```json
    [
        {
            "id": 1,
            "title": "Rails 1",
            "author": "Renato Ramiro",
            "number_of_pages": 1200,
            "review": "Review 1",
            "created_at": "2018-07-24T23:09:54.542Z",
            "updated_at": "2018-07-24T23:09:54.542Z"
        },
        {
            "id": 2,
            "title": "Rails 2",
            "author": "José da Silva",
            "number_of_pages": 100,
            "review": "Review 2",
            "created_at": "2018-07-24T23:12:00.795Z",
            "updated_at": "2018-07-24T23:12:00.795Z"
        }
    ]
```

### Obter 1 livro (GET)
`http://localhost:3000/api/books/:id`

#### Resposta
```json
    {
        "id": 1,
        "title": "Livro 1",
        "author": "Renato Ramiro",
        "number_of_pages": 1200,
        "review": "Review 1",
        "created_at": "2018-07-24T23:09:54.542Z",
        "updated_at": "2018-07-24T23:09:54.542Z"
    }
```

### Adicionar livro (POST)
`http://localhost:3000/api/books`

#### Requisição
```json
{
	"book": {
		"title": "Livro 4",
		"author": "Antonio João",
		"number_of_pages": 11,
		"review": "Este livro é sensacional"
	}
}
```

### Atualizar livro (PUT/PATCH)
`http://localhost:3000/api/books/:id`

#### Requisição
```json
{
	"book": {
		"title": "Livro 4: titulo atualizado",
	}
}
```

### Remover livro (DELETE)
`http://localhost:3000/api/books/:id`