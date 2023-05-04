#language: pt

@relogio_madis_resource_cadastro
Funcionalidade: Validando os resources do cadastro do relogio da madis

    @relogio_madis_resource_cadastro_DRep
    Cenario: Validando os resources do cadastro do relogio D Rep da madis

        Dado Efetuo o login para verificar os resources do cadastro de relogio da madis
        Quando Acesso a tela de relogios para validar o resource do cadastro da madis
        Quando Clico para adicionar um novo relogio e seleciono o modelo D Rep da madis
        Então Verifico os resources do cadastrode relogio modelo D Rep da madis