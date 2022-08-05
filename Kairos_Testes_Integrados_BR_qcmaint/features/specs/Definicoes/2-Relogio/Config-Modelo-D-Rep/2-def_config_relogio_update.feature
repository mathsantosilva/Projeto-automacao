#language: pt

@relogio_update_config
Funcionalidade: Atualização de configuração do relogio

    @relogio_update_config_DRep
    Cenario: Atualização de configuração do relogio D Rep

        Dado Acesso a tela de relogios para atualizar a configuração
        Quando atualizo a configuração
        Quando Aperto no botão salvar para atualizar a configuração
        Então Aguardo a confirmação de atualizacao da configuração "Configuração Relógio editada com sucesso"