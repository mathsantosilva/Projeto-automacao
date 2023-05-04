#language: pt

@relogio_madis_resource_config
Funcionalidade: Validando o resource da configuração do relogio da madis

    @relogio_madis_resource_config_DRep
    Cenario: Validando o resource da configuração do relogio D Rep da madis

        Dado Efetuo o login para verificar os resources da configuração de relogio da madis
        Quando Acesso a tela de relogios para validar o resource da configuração da madis
        Quando Acesso o cadastro da configuração de relogio para validar os resources da madis
        Então Verifico os resources do relogio modelo D Rep da madis