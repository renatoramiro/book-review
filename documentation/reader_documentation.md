## Rota Raiz

`http://localhost:3000/api/`

### Listar Leitores (GET)
`http://localhost:3000/api/readers`

#### Resposta
```json
[
    {
        "id": 1,
        "name": "Renato Ramiro",
        "email": "renato@mail.com",
        "created_at": "2018-07-26T22:33:59.456Z",
        "updated_at": "2018-07-26T22:33:59.456Z"
    },
    {
        "id": 2,
        "name": "João José",
        "email": "joao@mail.com",
        "created_at": "2018-07-26T23:02:02.823Z",
        "updated_at": "2018-07-26T23:02:02.823Z"
    }
]
```

### Obter 1 leitor (GET)
`http://localhost:3000/api/readers/:id`

#### Resposta
```json
{
	"id": 1,
	"name": "Renato Ramiro",
	"email": "renato@mail.com",
	 "created_at": "2018-07-26T22:33:59.456Z",
	"updated_at": "2018-07-26T22:33:59.456Z"
}
```

### Adicionar leitor (POST)
`http://localhost:3000/api/readers`

#### Requisição
```json
{
	"reader": {
		"name": "Maria José",
		"email": "maria@mail.com"
	}
}
```

### Atualizar leitor (PUT/PATCH)
`http://localhost:3000/api/readers/:id`

#### Requisição
```json
{
	"reader": {
		"name": "Maria Silva"
	}
}
```

### Remover leitor (DELETE)
`http://localhost:3000/api/readers/:id`