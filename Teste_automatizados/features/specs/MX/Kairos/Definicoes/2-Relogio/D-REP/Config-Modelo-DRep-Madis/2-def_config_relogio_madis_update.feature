#language: pt

@relogio_madis_update_config
Funcionalidade: Atualização de configuração do relogio da madis

    @relogio_madis_update_config_DRep
    Cenario: Atualização de configuração do relogio D Rep da madis

        Dado Acesso a tela de relogios para atualizar a configuração da madis
        Quando atualizo a configuração da madis
        Quando Aperto no botão salvar para atualizar a configuração da madis
        Então Aguardo a confirmação de atualizacao da configuração da madis "Configuração Relógio editada com sucesso"