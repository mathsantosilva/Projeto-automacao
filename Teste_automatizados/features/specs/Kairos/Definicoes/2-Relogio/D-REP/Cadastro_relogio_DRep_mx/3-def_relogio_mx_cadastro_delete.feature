#language: pt

@relogio_mx_delete_cadastro
Funcionalidade: Remoção do cadastro de relogio de mx

    @relogio_mx_delete_cadastro_DRep
    Cenario: Remoção do relogio D Rep de mx

        Dado Acesso a tela de relogios para remover o modelo D Rep de mx
        Quando Seleciono o relogio cadastrado e clico em remover de mx
        Quando Clico para confirmar a remoção de mx
        Então Aguardo a mensagem de que o relogio foi removido com sucesso de mx "El Reloj fue removido con éxito"