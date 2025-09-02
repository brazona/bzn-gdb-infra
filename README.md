# BANCO DE DADOS [ GDB ]

__[descrição do repositório: ]__ Repositório fornece informações e recursos para implementação e configuração do banco de dados.

## Identificadores da Aplicação

| Sigla | Descrição do Projeto | Nome Aplicativo |
| --- | --- | --- |
| GDB | Banco de Dados | bzn-gdb-infra |

__[relação das versões de aplicativos externos: ]__ A aplicação utiliza as seguintes versões:

| Software | Versão |
| --- | --- |
| JDK | 24.0.1 |
| Maven | 3.6.3 |
| Intellij | 2024.1.3 (Community Edition) |
| Vscode | 1.99.3 |
| Docker | 27.5.1 |
| Docker Compose | v2.32.4 |
| Git | 2.45.1 |
| Windows | 10 |

## Deploy da Aplicação

__[descrição do processo de deploy em ambiente cloud: ]__ *NÃO SE APLICA*

### Tabela Branch x Ambiente

| Branch | Ambiente |
| --- | --- |
| develop | Aplica no ambiente __DSV__ |
| release/** | Aplica no ambiente __HMG__ |
| pre-release/** | Aplica no ambiente __STG__ |
| main | Aplica no ambiente __PRD__ |

## Estrutura do projeto

__[descrição da estrutura do diretório: ]__

``` text

├── .github
│    └── branch_ruleset.yml
│    └── dependabot.yml
├── app
│   └── src
│       └── java
│       └── resources
│   └── .gitignore
│   └── compose.yml
│   └── Dockerfile
│   └── pom.xml
├── docs
│   └── CONTRIBUTING.md
│   └── CODE_OF_CONDUCT.md
│   └── PULL_REQUEST_TEMPLATE.md
│   └── SECURITY.md
└── .gitignore
└── README.md
```

## Execução Local Host

__[descrição do processo de execução da aplicação localhost: ]__ No diretório /app desse repositório, execute o comando abaixo num termina bash:

``` sh
mvn clean install
```

> [!NOTE]
> Para executar o comando acima citado, é necessário incluir no diretório **app/**, o arquivo .env, que fornecerá as variáveis de ambiente.
> Procure o arquiteto do projeto e solicite o arquivo **.env**.

Se a instalação ocorrer com sucesso, estará disponível no host: "http://localhost:8484/webjars/swagger-ui/index.html"

## Execução docker compose

__[descrição do processo de execução da aplicação localhost com docker compose: ]__ Para atender a necessidade de executar a os servidor em ambiente local, foi criado um manifesto compose que inicia as configurações iniciais dos servidores, proporcionando os recursos da arquitetura em ambiente **localhost.**


Para executar essa instrução basta abrir o terminal no diretório /app e executar com exemplo abaixo:

```bash
docker compose --env-file .env up -d --build --force-recreate
```

> [!NOTE]
> Para executar o comando acima citado, é necessário incluir no diretório **app/**, o arquivo .env, que fornecerá ao docker compose as variáveis de ambiente.
> Procure o arquiteto do projeto e solicite o arquivo **.env**.

## Licença

> [!IMPORTANT]
> *O código fonte neste projeto não possui licença de uso.*

É terminantemente proibido reproduzir, distribuir, alterar, utilizar engenharia reversa ou valer-se de qualquer tentativa de reverter ao seu código-fonte qualquer dos componentes que compõem o SOFTWARE, bem como utilizar subterfúgios para burlar a quantidade de usuários licenciados.
