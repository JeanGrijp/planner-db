# planner-db

Banco de dados PostgreSQL para o sistema Planner, configurado com Docker e pgAdmin.

## 🚀 Começando

Este projeto contém a configuração do banco de dados PostgreSQL utilizando Docker e Docker Compose, além do pgAdmin para gerenciamento e manipulação do banco de dados.

### 📋 Pré-requisitos

- Docker instalado ([Instalar Docker](https://docs.docker.com/get-docker/))
- Docker Compose instalado ([Instalar Docker Compose](https://docs.docker.com/compose/install/))

### 🔧 Instalação e Execução

1. Clone o repositório:
```bash
git clone https://github.com/JeanGrijp/planner-db.git
cd planner-db
```

2. Inicie os containers:
```bash
docker-compose up -d
```

3. Verifique se os containers estão rodando:
```bash
docker-compose ps
```

### 🎯 Acessando os Serviços

#### PostgreSQL
- **Host:** localhost
- **Porta:** 5432
- **Banco de Dados:** planner_db
- **Usuário:** planner_user
- **Senha:** planner_password

#### pgAdmin
- **URL:** http://localhost:5050
- **Email:** admin@planner.com
- **Senha:** admin

### 🔌 Conectando ao PostgreSQL via pgAdmin

1. Acesse o pgAdmin em http://localhost:5050
2. Faça login com as credenciais fornecidas acima
3. Clique com botão direito em "Servers" → "Register" → "Server"
4. Na aba "General", defina um nome (ex: "Planner DB")
5. Na aba "Connection", preencha:
   - **Host name/address:** postgres
   - **Port:** 5432
   - **Maintenance database:** planner_db
   - **Username:** planner_user
   - **Password:** planner_password
6. Clique em "Save"

### 🛠️ Comandos Úteis

Parar os containers:
```bash
docker-compose down
```

Parar e remover volumes (apaga os dados):
```bash
docker-compose down -v
```

Ver logs:
```bash
docker-compose logs -f
```

Ver logs de um serviço específico:
```bash
docker-compose logs -f postgres
docker-compose logs -f pgadmin
```

Recriar os containers:
```bash
docker-compose up -d --build
```

### 📦 Estrutura do Projeto

```
planner-db/
├── Dockerfile              # Imagem customizada do PostgreSQL
├── docker-compose.yml      # Orquestração dos serviços
├── .gitignore             # Arquivos ignorados pelo Git
└── README.md              # Documentação
```

### 🔒 Segurança

⚠️ **IMPORTANTE:** As credenciais padrão são apenas para desenvolvimento. Em produção, use variáveis de ambiente seguras e nunca commite senhas no código.

### 📝 Licença

Este projeto está sob a licença MIT.