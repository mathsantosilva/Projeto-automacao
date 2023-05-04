#language: pt

@relogio_madis_delete_cadastro
Funcionalidade: Remoção do cadastro de relogio da madis

    @relogio_madis_delete_cadastro_DRep
    Cenario: Remoção do relogio D Rep da madis

        Dado Acesso a tela de relogios para remover o modelo D Rep da madis
        Quando Seleciono o relogio cadastrado e clico em remover da madis
        Quando Clico para confirmar a remoção da madis
        Então Aguardo a mensagem de que o relogio foi removido com sucesso da madis "O Relógio foi removido com sucesso"