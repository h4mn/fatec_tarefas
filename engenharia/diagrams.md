# Diagramas Mermaid

[Mermaid Live Editor](https://mermaid.live/)

## 1. Conceitos Mermaid

O Mermaid é uma ferramenta de código aberto que permite criar diagramas a partir de texto, utilizando uma sintaxe simples. É uma biblioteca javascript que permite criar diagramas com código markdown. O objetivo é facilitar a criação de diagramas e a sua manutenção, já que os diagramas são armazenados no formato markdown.

Para usar o Mermaid, basta criar um arquivo markdown e adicionar o código do diagrama. O código do diagrama deve ser inserido entre as tags ```mermaid e ```.

## 2. Diagrama de Caso de Uso

Diagrama de caso de uso é uma ferramenta da UML (Unified Modeling Language) utilizada para descrever o comportamento funcional de um sistema a partir da perspectiva do usuário. É uma representação gráfica que mostra as interações entre o usuário e o sistema em questão, bem como as relações entre os diferentes casos de uso e seus atores.

### 2.1 Ambiente para o Vendedor

#### Narrativa

O vendedor acessa o sistema utilizando suas credenciais de login, que podem ser obtidas através do cadastro pelo Google ou pelo cadastro direto no sistema. Assim, tem acesso a todas as funcionalidades do ambiente do vendedor, incluindo o cadastro de clientes, cadastro de produtos, controle dos fiados, envio de cobranças e registro dos pagamentos. O vendedor pode também gerar relatórios de vendas e resultados por período, bem como visualizar a vitrine inicial com os indicadores de resultados.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Ambiente do Vendedor
---
graph LR
    A[Vendedor] --- B([Login])
    subgraph "`Sistema / **Ambiente do Vendedor**`"
        direction TB
        L[Pelo Google] -.-> B
        B --- C[Vitrine Inicial]
        C --- D([Cadastro de Clientes])
        C --- E([Cadastro de Produtos])
        C --- F([Controle dos Fiados])
        C --- G([Envio de Cobranças])
        C --- H([Registro dos Pagamentos])
        C --- I[Indicadores de Resultados]
        C --- J([Relatórios de Vendas])
        C --- K([Relatórios de Resultados])
        I --> J
        I --> K
    end
```

### 2.2 Ambiente para o Cliente

#### Narrativa

O cliente acessa o sistema utilizando suas credenciais de login, e um token recebido através de um convite. O cliente tem acesso às suas informações de cadastro, como nome, endereço e histórico de compras, a funcionalidade de comprar fiado pelo QRCode, bem como o pagamento dos fiados via PIX. O cliente pode também visualizar seus fiados em aberto e os produtos disponíveis na loja.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Ambiente do Cliente
---
graph LR
    A[Cliente] --- B([Login])
    subgraph "`Sistema / **Ambiente do Cliente**`"
        direction TB
        L[Convite / Token] -.-> B
        B --- C[Vitrine Inicial]
        C --- D([Informações do Cliente])
        C --- E([Comprar Fiado pelo QRCode])
        C --- F([Fiados em Aberto])
        C --- G([Produtos Disponíveis])
        C --- H([Pagamento dos Fiados])
    end
```

### 2.3 Cadastro de Clientes

#### Narrativa

O usuário seleciona a opção de cadastro de clientes e preenche os campos com as informações solicitadas. As informações são validadas e armazenadas na API do Firebase, que é responsável pelo armazenamento dos dados dos clientes.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Cadastro de Clientes
---
graph LR
    A[Usuário] --- B[Cadastro de Clientes]
    subgraph "`Sistema / **Cadastro de Clientes**`"
        direction TB
        B --- C([Lançamento dos Dados do Cliente])
        B --- D([Armazenamento dos dados dos clientes])
    end
    D --- F[API do Firebase]
```

### 2.4 Cadastro de Produtos

#### Narrativa

O usuário seleciona a opção de cadastro de produto e preenche os campos com as informações solicitadas, incluindo o QRCode do produto. As informações são validadas e armazenadas na API do Firebase.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Cadastro de Produtos
---
graph LR
    A[Usuário] --- B[Cadastro de Produtos]
    subgraph "`Sistema / **Cadastro de Produtos**`"
        direction TB
        B --- C([Lançamento dos Dados do Produto])
        B --- D([Armazenamento dos dados dos produtos])
    end
    D --- F[API do Firebase]
```

### 2.5 Relatório de Produtos com QRCode

#### Narrativa

O usuário seleciona a opção de relatório de produtos com QRCode e pode visualizar um relatório com os produtos cadastrados no sistema, incluindo as informações de cada produto e o QRCode correspondente.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Relatório de Produtos com QRCode
---
graph LR
    A[Usuário] --- B[Relatório de Produtos com QRCode]
    subgraph "`Sistema / **Relatório de Produtos com QRCode**`"
        direction TB
        B --- C([Visualização dos Produtos])
    end
```

### 2.6 Comprar Fiado pelo QRCode

#### Narrativa

O cliente seleciona a opção de comprar fiado pelo QRCode e escaneia o QRCode do produto desejado. O sistema verifica se o cliente tem limite de crédito disponível e autoriza a compra, que é registrada na API do Firebase.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Comprar Fiado pelo QRCode
---
graph LR
    A[Cliente] --- B[Comprar Fiado pelo QRCode]
    subgraph "`Sistema / **Comprar Fiado pelo QRCode**`"
        direction TB
        B --- C([Escaneamento do QRCode])
        B --- D([Verificação do Limite de Crédito])
        B --- E([Autorização da Compra])
        B --- F([Registro da Compra])
    end
    F --- G[API do Firebase]
```

### 2.7 Controle dos Fiados

#### Narrativa

O usuário seleciona a opção de controle dos fiados e pode visualizar os fiados em aberto de todos os clientes cadastrados no sistema. O usuário pode gerenciar os fiados, incluindo a geração de cobranças individuais e em lote, bem como o registro dos pagamentos recebidos.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Controle dos Fiados
---
graph LR
    A[Usuário] --- B[Controle dos Fiados]
    subgraph "`Sistema / **Controle dos Fiados**`"
        direction TB
        B --- C([Visualização dos Fiados em Aberto])
        B --- D([Geração de Cobranças Individuais])
        B --- E([Geração de Cobranças em Lote])
        B --- F([Registro dos Pagamentos])
    end
```

### 2.8 Envio de Cobrança Individual

#### Narrativa

O usuário seleciona a opção de envio de cobrança individual e seleciona o cliente e o produto desejado. O sistema gera uma cobrança individual, que é enviada ao cliente via e-mail ou SMS.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Envio de Cobrança Individual
---
graph TB
    A[Usuário] --- B[Geração de Cobrança Individual]
    subgraph "`Sistema / **Envio de Cobrança Individual**`"
        B --- C([Seleção do Cliente])
        B --- D([Seleção dos Itens de Fiados Abertos])
        B --- E([Envio da Cobrança Individual])
        E --- F[Email / SMS / Whatsapp]
        C --> D
        D --> E
    end
    F --- G[Cliente]
```

### 2.9 Envio de Cobrança em Lote

#### Narrativa

O usuário seleciona a opção de envio de cobrança em lote e seleciona um grupo de clientes e produtos. O sistema gera uma cobrança em lote, que é enviada aos clientes via e-mail ou SMS.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso do Envio de Cobrança em Lote
---
graph TB
    A[Usuário] --- B[Geração de Cobrança em Lote]
    subgraph "`Sistema / **Envio de Cobrança em Lote**`"
        B --- C([Seleção do Grupo de Clientes])
        B --- D([Envio da Cobrança em Lote])
        D --- E[Email / SMS / Whatsapp]
        C --> D
    end
    E --- F[Cliente A]
    E --- G[Cliente B]
    E --- H[Cliente N]
```

### 2.10 Integração com o PIX

#### Narrativa

O sistema é integrado à API do PIX e permite o pagamento dos fiados via PIX. O cliente pode selecionar a opção de pagar via PIX e escanear o QRCode gerado pelo sistema. O pagamento é registrado na API do Firebase.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso da Integração com o PIX
---
graph LR
    A[Usuário] --- B[Integração com o PIX]
    subgraph "`Sistema / **Integração com o PIX**`"
        B --- C([Selecionar Conta de Cobrança])
        B --- D([Selecionar Pagar via PIX])
        B --- E([Escanear QrCode])
        B --- F[Enviar Operação de Pagamento]
        B --- G[Registrar pagamento]
    end
    F --- I[API do PIX]
    G --- H[API Firebase]
```
### 2.11 Vitrine Inicial com Indicadores de Resultado

#### Narrativa

O sistema exibe uma vitrine inicial com os produtos mais vendidos e os indicadores de resultados, incluindo o faturamento do dia, semana e mês, bem como a quantidade de fiados em aberto.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso da Vitrine Inicial com Indicadores de Resultado
---
graph LR
    A[Usuário] --- B[Vitrine Inicial com Indicadores de Resultado]
    subgraph "`Sistema / **Vitrine Inicial com Indicadores de Resultado**`"
        B --- C([Visualização dos Indicadores de Resultados])
        B --- D([Visualização das Contas a Receber])
        B --- E([Visualização dos Resultados por Período])
    end
```

### 2.12 Relatórios de Contas

#### Narrativa

O usuário seleciona a opção de relatórios de contas e pode visualizar relatórios das contas vencidas, a vencer, bem como as contas pagas e o total a receber.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso dos Relatórios de Contas
---
graph LR
    A[Usuário] --- B[Relatórios de Contas]
    subgraph "`Sistema / **Relatórios de Contas**`"
        B --- C([Visualização das Contas Vencidas])
        B --- D([Visualização das Contas a Vencer])
        B --- E([Visualização das Contas Pagas])
        B --- F([Visualização do Total a Receber])
    end
```

### 2.13 Relatórios de Resultados

#### Narrativa

O usuário seleciona a opção de relatórios de resultados e pode visualizar relatórios dos resultados de vendas e faturamento por dia, semana e mês, bem como outras informações relevantes para análise do desempenho do negócio.

#### Diagrama

```mermaid
---
title: Diagrama de Caso de Uso dos Relatórios de Resultados
---
graph LR
    A[Usuário] --- B[Relatórios de Resultados]
    subgraph "`Sistema / **Relatórios de Resultados**`"
        B --- C([Visualização dos Resultados por Dia])
        B --- D([Visualização dos Resultados por Semana])
        B --- E([Visualização dos Resultados por Mês])
        B --- F([Visualização dos Resultados por Período])
        B --- G([Visualização dos Resultados por Produto])
        B --- H([Visualização dos Resultados por Cliente])
    end
```

## 3. Diagramas de Sequencia

Diagrama de Sequência é uma ferramenta da UML (Unified Modeling Language) utilizada para modelar a interação entre objetos em um sistema. Ele descreve a sequência de eventos que ocorrem ao longo do tempo e como os objetos colaboram para realizar uma determinada tarefa.

O diagrama de sequência mostra a interação entre objetos em uma linha do tempo, destacando as mensagens trocadas entre eles. Ele é útil para entender como um sistema funciona, mostrando como os objetos se comunicam e colaboram uns com os outros para alcançar um objetivo.

### 3.1 Cadastrar Cliente

- O cliente manifesta interesse em se cadastrar no programa de fidelidade;
- O atendente da loja inicia o processo de cadastro do cliente;
- O atendente solicita as informações pessoais do cliente;
- O cliente fornece as informações solicitadas;
- O atendente acessa o sistema de gerenciamento de clientes;
- O sistema exibe a tela de cadastro;
- O atendente insere as informações do cliente nos campos correspondentes;
- O sistema valida os dados inseridos;
- O sistema verifica se o CPF do cliente já está cadastrado;
- O sistema cria um novo registro para o cliente;
- O sistema armazena as informações do cliente no banco de dados;
- O sistema exibe uma mensagem de confirmação do cadastro;
- O atendente entrega um cartão de fidelidade ao cliente.

```mermaid
---
title: Diagrama de Sequencia do Cadastro de Cliente
---
sequenceDiagram
    participant Cliente
    participant Atendente
    participant Sistema
    participant Banco de Dados
    Cliente->>Atendente: Manifesta interesse em se cadastrar
    Atendente->>Sistema: Iniciar cadastro
    Sistema->>Cliente: Solicitar informações pessoais
    Cliente->>Atendente: Fornece informações
    Atendente->>Sistema: Acessa sistema de gerenciamento de clientes
    Sistema->>Atendente: Exibe tela de cadastro
    Atendente->>Sistema: Insere informações do cliente
    Sistema->>Atendente: Valida dados inseridos
    Sistema->>Atendente: Verifica se CPF já está cadastrado
    Sistema->>Banco de Dados: Cria novo registro
    Sistema->>Banco de Dados: Armazena informações do cliente
    Sistema->>Atendente: Exibe mensagem de confirmação
    Atendente->>Cliente: Entrega cartão de fidelidade
```

## 4. Diagramas de Classes

Diagrama de Classes é uma ferramenta da UML (Unified Modeling Language) utilizada para modelar a estrutura de um sistema orientado a objetos. Ele descreve as classes, atributos e métodos de um sistema, bem como as relações entre as classes.

### 4.1. Classes do Ambiente do Vendedor

#### 4.1.1. Classe de autenticação

```mermaid
---
title: Diagrama da classe de autenticação
---
classDiagram
    class Autenticacao{
        +string email
        +string senha
        +Acessar()
    }

    Autenticacao <|-- AutenticacaoDireta
    Autenticacao <|-- AutenticacaoGoogle

    class AutenticacaoDireta{
        +Login()
    }
    class AutenticacaoGoogle{
        +Login()
    }
```

#### 4.1.2. Classe de Cadastros

```mermaid
---
title: Diagrama de Classe de Cadastros
---
classDiagram
    class Foto{
        +string url
        +string alt
        +Exibir()
    }

    class Cadastro{
        +string nome
        +Foto foto
        +Cadastrar()
    }

    Foto --|> Cadastro
    Cadastro <|-- CadastroCliente
    Cadastro <|-- CadastroProduto

    class CadastroCliente{
        +string telefone
        +string email
    }
    class CadastroProduto{
        +string descricao
        +double preco
    }
```

#### 4.1.3. Classe de Fiados

```mermaid
---
title: Diagrama de Classe de Fiados
---
classDiagram
    class Divida{
        +CadastroCliente devedor
        +double debito
        +date compra
        +date vencimento
    }

    Divida <|-- Ajuste

    class Ajuste{
        +adicionarDivida(CadastroCliente, debito, compra, vencimento)
        +efetuarPagamento(Divida)
        +List<Divida> consultarDividas()
    }
```

## 5. Diagramas de Relacionamento de Entidade

```mermaid
erDiagram
    CLIENTE ||--o{ PEDIDO : places
    PEDIDO ||--|{ PRODUTO : contains
    PEDIDO ||..|{ PAGAMENTO : uses
´´´