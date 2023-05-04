#language: pt

@relogio_mx_update_config
Funcionalidade: Atualização de configuração do relogio de mx

    @relogio_mx_update_config_DRep
    Cenario: Atualização de configuração do relogio D Rep de mx

        Dado Acesso a tela de relogios para atualizar a configuração de mx
        Quando atualizo a configuração de mx
        Quando Aperto no botão salvar para atualizar a configuração de mx
        Então Aguardo a confirmação de atualizacao da configuração de mx "Configuración del reloj editada con éxito"