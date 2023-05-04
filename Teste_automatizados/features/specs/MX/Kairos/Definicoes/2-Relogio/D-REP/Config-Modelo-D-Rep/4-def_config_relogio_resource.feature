#language: pt

@relogio_resource_config
Funcionalidade: Validando o resource da configuração do relogio

    @relogio_resource_config_DRep
    Cenario: Validando o resource da configuração do relogio D Rep

        Dado Efetuo o login para verificar os resources da configuração de relogio
        Quando Acesso a tela de relogios para validar o resource da configuração
        Quando Acesso o cadastro da configuração de relogio para validar os resources
        Então Verifico os resources do relogio modelo D Rep