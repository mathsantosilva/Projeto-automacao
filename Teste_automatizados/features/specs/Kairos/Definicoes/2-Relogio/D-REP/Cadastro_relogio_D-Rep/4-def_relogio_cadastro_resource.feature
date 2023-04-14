#language: pt

@relogio_resource_cadastro
Funcionalidade: Validando os resources do cadastro do relogio

    @relogio_resource_cadastro_DRep
    Cenario: Validando os resources do cadastro do relogio D Rep

        Dado Efetuo o login para verificar os resources do cadastro de relogio
        Quando Acesso a tela de relogios para validar o resource do cadastro
        Quando Clico para adicionar um novo relogio e seleciono o modelo D Rep
        Então Verifico os resources do cadastrode relogio modelo D Rep