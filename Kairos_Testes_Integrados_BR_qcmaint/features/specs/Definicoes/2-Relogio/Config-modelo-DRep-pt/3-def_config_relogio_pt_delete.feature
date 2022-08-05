#language: pt

@relogio_pt_delete_config
Funcionalidade: Deletando a configuração do relogio de pt

    @relogio_pt_delete_config_DRep
    Cenario: Deletando a configuração do relogio D Rep de pt

        Dado Acesso a tela de relogios para deletar a configuração de pt
        Quando deleto a configuração de pt
        Quando Confirmo a remoção da configuração de pt
        Então Aguardo a confirmação de remoção da configuração de pt "A Configuração Relógio foi removida com sucesso"