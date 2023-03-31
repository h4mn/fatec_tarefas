# Projeto Mobile

## Diagramas de Sequência

O diagrama de sequência é uma ferramenta crucial da UML que permite a modelagem de interações entre os objetos de um sistema complexo. É através deste diagrama que a ordem em que as mensagens são enviadas e recebidas pelos objetos é descrita, possibilitando a identificação de interações entre as diferentes partes do sistema. Além disso, o diagrama de sequência auxilia na determinação do que deve ser implementado para garantir o funcionamento correto do caso de uso. Em resumo, essa ferramenta é fundamental para a concepção de sistemas de software com alta qualidade, confiabilidade e manutenibilidade.

### Selecionar Ambiente

Quero começar treinando o caso de uso Selecionar Ambiente. As entidades, suponho que seja o Usuário (que serão dois tipos: vendedor e cliente), o Controle do sistema, e a Camada de dados, possivelmente.
As ações disponíveis poderão ser: No caso do vendedor (que será o primeiro a criar uma conta, devido ao cliente precisar de um token recebido pelo vendedor para acessar o aplicativo) fará a criação de conta e/ou login; Assim o Controle vai responder entregando a área do vendedor para este usuário; No caso do cliente que esteja de posse de um token recebido por um vendedor, vai criar uma conta e;ou logar e utilizar o token; Então será redirecionado para a área do cliente;
O vendedor faz a criação de conta ou faz o login e o Controle do sistema responde entregando a área do vendedor.
O cliente, que possui um token recebido pelo vendedor, faz a criação de conta ou faz o login utilizando o token e o Controle do sistema redireciona o cliente para a área do cliente.
