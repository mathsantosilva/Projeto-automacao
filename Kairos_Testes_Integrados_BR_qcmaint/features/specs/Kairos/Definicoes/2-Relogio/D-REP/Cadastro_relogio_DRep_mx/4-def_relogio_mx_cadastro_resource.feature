#language: pt

@relogio_mx_resource_cadastro
Funcionalidade: Validando os resources do cadastro do relogio de mx

    @relogio_mx_resource_cadastro_DRep
    Cenario: Validando os resources do cadastro do relogio D Rep de mx

        Dado Efetuo o login para verificar os resources do cadastro de relogio de mx
        Quando Acesso a tela de relogios para validar o resource do cadastro de mx
        Quando Clico para adicionar um novo relogio e seleciono o modelo D Rep de mx
        Então Verifico os resources do cadastrode relogio modelo D Rep de mx