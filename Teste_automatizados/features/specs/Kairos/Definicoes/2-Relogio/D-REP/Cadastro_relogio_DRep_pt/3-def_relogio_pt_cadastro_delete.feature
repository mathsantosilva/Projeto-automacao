#language: pt

@relogio_pt_delete_cadastro
Funcionalidade: Remoção do cadastro de relogio de pt

    @relogio_pt_delete_cadastro_DRep
    Cenario: Remoção do relogio D Rep de pt

        Dado Acesso a tela de relogios para remover o modelo D Rep de pt
        Quando Seleciono o relogio cadastrado e clico em remover de pt
        Quando Clico para confirmar a remoção de pt
        Então Aguardo a mensagem de que o relogio foi removido com sucesso de pt "O Relógio foi removido com sucesso"