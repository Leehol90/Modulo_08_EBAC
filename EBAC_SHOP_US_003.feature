            #language: pt

            Funcionalidade: Cadastro de cliente na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o cliente acessa a página de cadastro

            Esquema do Cenario: Cadastro de campos obrigatórios, marcados com asterisco (*)
            Quando preencher com <dados> os campos marcados com asterisco
            Então o sistema deve <responder>

            Exemplos:
            | dados            | responder                                                                                             |
            | "João Guilherme" | mostrar mensagem de sucesso e salvar cadastro                                                         |
            | ""               | apresentar um mensagem pedindo para o usuário preencher todos os campos com asterisco e não cadastrar |

            Esquema do Cenario: Cadastro com formato de email válido
            Quando o cliente preencher o campo de email com <email>
            Então o sistema deve exibir <mensagem>

            Exemplos:
            | email                        | mensagem                          |
            | "joãoguilherme@provedor.com" | "Seja bem vindo, João"            |
            | "emaildozezinho.com"         | "email inválido. Tente novamente" |

            Esquema do Cenario: Cadastrar com campos vazios
            Quando preencher com <dados> os campos marcados sem asterisco
            Então o sistema deve exibir <mensagem>

            Exemplos:
            | dados             | mensagem                                              |
            | "meus_dados_aqui" | "Obrigado!"                                           |
            | ""                | "Há campos vázios, tem certeza que deseja continuar?" |

