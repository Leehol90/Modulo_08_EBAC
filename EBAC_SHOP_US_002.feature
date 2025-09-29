            #language: pt

            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Esquema do Cenário: Autenticar múltiplos usuários
            Dado que estou na página de login da EBAC-SHOP
            Quando eu digitar o <usuario>
            E a <senha>
            Então o sistema deverá <resultado>

            Exemplos:
            | usuario                | senha            | resultado                                                |
            | clienteValido@ebac.com | minhaSenhaValida | redirecionar o usuário para a tela de checkout           |
            | usuario@invalido.com   | senhaValida123   | exibir a mensagem de alerta "Usuário ou senha inválidos" |
            | usuarioOk@ebac.com     | senhaInvalida    | exibir a mensagem de alerta "Usuário ou senha inválidos" |
