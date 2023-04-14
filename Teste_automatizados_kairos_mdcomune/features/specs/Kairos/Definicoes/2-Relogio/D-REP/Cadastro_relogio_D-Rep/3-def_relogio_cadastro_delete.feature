#language: pt

@relogio_delete_cadastro
Funcionalidade: Remoção do cadastro de relogio

    @relogio_delete_cadastro_DRep
    Cenario: Remoção do relogio D Rep

        Dado Acesso a tela de relogios para remover o modelo D Rep
        Quando Seleciono o relogio cadastrado e clico em remover
        Quando Clico para confirmar a remoção
        Então Aguardo a mensagem de que o relogio foi removido com sucesso "O Relógio foi removido com sucesso"