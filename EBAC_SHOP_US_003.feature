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
            | "João Guilherme" | mostrar mensgem de sucesso e salvar cadastro                                                          |
            | ""               | apresentar um mensagem pedindo para o usuário preencher todos os campos com asterisco e não cadastrar |

            Esquema do Cenario: Cadastro com formato de email válido
            Quando o cliente preencher o campo de email com <email>
            Então o sistema deve <responder>

            Exemplos:
            | email                        | responder                                   |
            | "joãoguilherme@provedor.com" |                                             |
            | "emaildozezinho.com"         | exibir uma mensagem de erro e não cadastrar |

            Esquema do Cenario: Cadastrar com campos vazios
            Quando preencher com <dados> os campos marcados sem asterisco
            Então o sistema deve <responder>

            Exemplos:
            | dados             | responder                                                      |
            | "meus_dados_aqui" |                                                                |
            | ""                | exibir uma mensagem de alerta e pedir para o usuário confirmar |

