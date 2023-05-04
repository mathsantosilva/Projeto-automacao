#language: pt

@relogio_pt_resource_cadastro
Funcionalidade: Validando os resources do cadastro do relogio de pt

    @relogio_pt_resource_cadastro_DRep
    Cenario: Validando os resources do cadastro do relogio D Rep de pt

        Dado Efetuo o login para verificar os resources do cadastro de relogio de pt
        Quando Acesso a tela de relogios para validar o resource do cadastro de pt
        Quando Clico para adicionar um novo relogio e seleciono o modelo D Rep de pt
        Então Verifico os resources do cadastrode relogio modelo D Rep de pt