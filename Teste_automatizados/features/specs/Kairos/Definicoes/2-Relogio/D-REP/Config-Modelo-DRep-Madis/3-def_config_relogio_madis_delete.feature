#language: pt

@relogio_madis_delete_config
Funcionalidade: Deletando a configuração do relogio da madis

    @relogio_madis_delete_config_DRep
    Cenario: Deletando a configuração do relogio D Rep da madis

        Dado Acesso a tela de relogios para deletar a configuração da madis
        Quando deleto a configuração da madis
        Quando Confirmo a remoção da configuração da madis
        Então Aguardo a confirmação de remoção da configuração da madis "A Configuração Relógio foi removida com sucesso"