<h1 style="text-align: center">Forum Hub</h1>    

<p align="center"><img style="width: 150px" src="Badge-Spring.png"></p>    

<p align="center">Desafio ForumHub da formação Oracle Next Education em parceria com a Alura</p>    

# Descrição

API Restful em Java para criação de um forum onde existem as seguintes funcionalidades:
1. Login na API (Login somente com usuário cadastrado manualmente);
2. Operações de **CRUD** relacionadas a topicos;
3. Validações e regras de négocios focadas nos topicos;
4. Persistencias de dados em banco de dados _MySQL_
5. Documentação da API por Swaggger;

# Endpoints

Abaixo listarei alguns end-points que possuem retorno dentro da API

## `POST /login`

Endpoint para autenticação dentro da API, assim tendo acesso as demais rotas;

- Request
```json  
{  
    "login": "email@teste.com",  
    "senha": "senhaIncrivel"  
}  
```  

-  Response
```json  
{  
    "token": "Imagine um lindo token JWT nesta linha 😁"  
}  
```  

## `GET /topicos`
Endpoint para buscar todos os tópicos presentes dentro do banco de dados;

- Response
```json  
{  
// Json Suprimido  
    "content": [  
       {          "id": 1,  
          "titulo": "Alguem me ajuda com java por favor",  
          "mensagem": "Java é a unica linguagem que conseguiu me deixar com dor de cabeça, eu não estou realmente aguentando mais isto",  
          "data": "12/07/2024 07:00"  
       },       {          "id": 3,  
          "titulo": "Como iniciar a programar Java Desktop",  
          "mensagem": "Alguem poderia me dar algumas dicas?",  
          "data": "12/07/2024 07:26"  
       }    ],// Json Suprimido  
}  
```  


> Similar a este endpoint existe o `GET /topicos/${id}` que ira detalhar um tópico:

## `POST /topicos`

Endpoint responsavel pela criação de um registro de topico dentro da API;

- Request
```json  
{  
    "titulo": "Como iniciar a programar Java Desktop",  
    "mensagem": "Alguem poderia me dar algumas dicas?",  
    "autor": "thiagopazba@gmail.com",  
    "curso": "Java"  
}  
```  

- Response
```json  
{  
    "titulo": "Como iniciar a programar Java Desktop",  
    "data": "12/07/2024 07:26",  
    "estadoTopico": true,  
    "autor": "thiagopazba@gmail.com",  
    "curso": "Java"  
}  
```  


## `PUT /topicos/${id}`

Endpoint responsavel pela atualização de um registro dentro da API;

- Request
```json
{
	"titulo": "Alguem me ajuda com java por favor",
	"mensagem": "Java é a unica linguagem que conseguiu me deixar com dor de cabeça, eu não estou realmente aguentando mais isto",
	"curso": "Java",
	"autor": "thiagopazba@gmail.com"
}
```

- Response
```json
{
	"titulo": "Alguem me ajuda com java por favor",
	"mensagem": "Java é a unica linguagem que conseguiu me deixar com dor de cabeça, eu não estou realmente aguentando mais isto",
	"autor": "thiagopazba@gmail.com",
	"curso": "Java"
}
```
# Stacks

- `Java` -> Versão 17;
- `IntelliJ Idea Ultimate` -> IDE utilizada no desenvolvimento do projeto;
- `MySQL 8` -> Banco de dados utilizado no projeto;
## Dependencias
- `Spring Boot` -> Framework em que o projeto se baseia;
- `Sprinf Security` -> Modulo de segurança do ecossistema Spring;
- `Flyway Migration` -> Dependência para controle de versões do banco de dados;
- `DevTools` -> Dependência de desenvolvimento do ecossistema Spring;
- `Lombok` -> Dependência Para criações de Getter, Setters e Construtores através de anotações;
- `JWT` -> Dependência para autenticação por Json Web Token;

# Aprendizado
Diferente dos outros cursos, eu carregava um conhecimento em relação a APIs e o modelo REST, pois já desenvolvi algumas pequenas apis dentro do meu curso técnico, ver como este tipo de projeto é desenvolvido no ecossistema Java Spring foi bem interessante, e me fez ver algumas boas práticas que posso aplicar em projetos que já possui.

# Agradecimento
Agradeço a Oracle e a Alura por me fornecer essa oportunidade de conhecer um novo ecossistema de desenvolvimento e estudar uma nova linguagem com todo aparato da Alura ao meu lado, foi uma experiência incrível e muito enriquecedora na minha caminhada como pessoa desenvolvedora. O projeto foi algo tão incrível que já consegui puxar mais duas pessoas para ele e pretendo puxar muitas outras daqui para frente