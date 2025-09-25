            #language: pt

            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Esquema do Cenário: Autenticar múltiplos usuários
            Dado que estou na página de login da EBAC-SHOP
            Quando eu digitar o <usuario>
            E a <senha>
            Então <resultado>

            Exemplos:
            | usuario                | senha            | resultado                                                          |
            | clienteValido@ebac.com | minhaSenhaValida | devo ser redirecionado para a tela de checkout                     |
            | usuario@invalido.com   | senhaValida123   | deve ser exibida a mensagem de alerta "Usuário ou senha inválidos" |
            | usuarioOk@ebac.com     | senhaInvalida    | deve ser exibida a mensagem de alerta "Usuário ou senha inválidos" |
