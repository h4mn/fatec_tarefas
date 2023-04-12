# Diagramas Mermaid

[Mermaid Live Editor](https://mermaid.live/)

```mermaid
sequenceDiagram
    participant Eu
    participant ChatGPT
    participant OpenAI Server
    Eu->>ChatGPT: Olá, como você está?
    ChatGPT->>Eu: Olá! Estou bem, obrigado. E você?
    Eu->>ChatGPT: Estou bem também. Você pode me ajudar com uma dúvida de matemática?
    ChatGPT->>Eu: Claro, qual é a sua dúvida?
    Eu->>ChatGPT: Eu estou com dificuldades para plotar uma restrição em um plano cartesiano. Você poderia me ajudar com isso?
    ChatGPT->>Eu: Claro, vamos lá. Qual é a restrição que você está tentando plotar?
    Eu->>ChatGPT: É a restrição 3x1 + 2x2 <= 12.
    ChatGPT->>Eu: Ok, vamos seguir esses três passos para plotar a restrição...
    Note right of ChatGPT: (Explicação dos passos)
    ChatGPT->>Eu: ...e é assim que você pode plotar a restrição no plano cartesiano.
    Eu->>ChatGPT: Entendi. Muito obrigado pela ajuda!
    ChatGPT->>Eu: De nada! Fico feliz em poder ajudar.
    Eu->>ChatGPT: Mais uma coisa, você sabe renderizar equações em LaTeX?
    ChatGPT->>Eu: Sim, é possível. Você pode usar a sintaxe `$equação$` para renderizar equações em linha e `$$equação$$` para renderizar equações em bloco.
    Eu->>ChatGPT: Muito obrigado novamente! Até mais.
    ChatGPT->>Eu: Até mais, bons estudos!
    Eu->>OpenAI Server: Você sabe renderizar RMarkdown e LaTeX?
    OpenAI Server->>Eu: Sim, eu sei. Você pode usar essas linguagens com markdown para formatar seus textos e incluir equações e gráficos em seus documentos.

```

## Diagramas de Sequência Cadastrar Cliente

O atendente da loja inicia o processo de cadastro do cliente;
O atendente solicita as informações pessoais do cliente;
O cliente fornece as informações solicitadas;
O atendente acessa o sistema de gerenciamento de clientes;
O sistema exibe a tela de cadastro;
O atendente insere as informações do cliente nos campos correspondentes;
O sistema valida os dados inseridos;
O sistema verifica se o CPF do cliente já está cadastrado;
O sistema cria um novo registro para o cliente;
O sistema armazena as informações do cliente no banco de dados;
O sistema exibe uma mensagem de confirmação do cadastro;
O atendente entrega um cartão de fidelidade ao cliente.

```mermaid

sequenceDiagram
    participant Atendente
    participant Cliente
    participant Sistema
    participant Banco de Dados
    Atendente->>Sistema: Iniciar cadastro
    Sistema->>Atendente: Solicitar informações pessoais
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

```
