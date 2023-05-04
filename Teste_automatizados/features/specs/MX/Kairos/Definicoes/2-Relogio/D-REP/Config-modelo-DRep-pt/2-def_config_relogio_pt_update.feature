#language: pt

@relogio_pt_update_config
Funcionalidade: Atualização de configuração do relogio de pt

    @relogio_pt_update_config_DRep
    Cenario: Atualização de configuração do relogio D Rep de pt

        Dado Acesso a tela de relogios para atualizar a configuração de pt
        Quando atualizo a configuração de pt
        Quando Aperto no botão salvar para atualizar a configuração de pt
        Então Aguardo a confirmação de atualizacao da configuração de pt "Configuração Relógio editada com sucesso"