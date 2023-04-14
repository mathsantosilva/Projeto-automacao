#language: pt

@relogio_delete_config
Funcionalidade: Deletando a configuração do relogio

    @relogio_delete_config_DRep
    Cenario: Deletando a configuração do relogio D Rep

        Dado Acesso a tela de relogios para deletar a configuração
        Quando deleto a configuração
        Quando Confirmo a remoção da configuração
        Então Aguardo a confirmação de remoção da configuração "A Configuração Relógio foi removida com sucesso"