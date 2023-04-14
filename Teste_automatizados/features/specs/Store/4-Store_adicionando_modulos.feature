#language: pt

@store_geral
@store_adicionando_modulos
Funcionalidade: adição

    @store_adicionando_modulos_empresa
    Cenario: Adiciono os modulos na empresa criada

        Dado acesso a tela de licença ativa
        Quando pesquiso a empresa e vou em gerenciar modulos extras
        Quando adiciono os modulos na empresa e salvo
        Então deverá adicionar os modulos com sucesso e demonstrar a mensagem "Sucesso no gerenciamento de módulos extra."