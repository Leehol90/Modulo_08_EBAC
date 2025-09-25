#language: pt

Funcionalidade: Configuração de produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho
E escolher a cor
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de um produto

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórias
Quando eu tentar adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
Então devo ver uma mensagem de erro indicando que todos os campos são obrigatórios
E o produto não deve ser adicionado ao carrinho

Cenário: Limite de 10 produtos por venda
Quando eu selecionar uma quantidade de um mesmo produto maior que 10
Então devo ver uma mensagem informando que o limite máximo é de 10 unidades
E o botão para adicionar produtos ao carrinho deve ficar desabilitado

Cenário: Botão limpar reseta as seleções
Dado que selecionei uma cor, tamanho, quantidade
Quando eu clicar no botão limpar
Então todas as seleções devem voltar para o estado original
