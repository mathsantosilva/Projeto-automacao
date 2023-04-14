#language: pt

@relogio_mx_create_cadastro
Funcionalidade: Cadastro do relogio de mx

    @relogio_mx_create_cadastro_DRep
    Cenario: Cadastro do relogio D Rep de mx

        Dado Acesso a tela de relogios para cadastro do modelo D Rep de mx
        Quando Cadastrando um novo relogio modelo D Rep de mx
        Quando Aperto para salvar o cadastro do relogio de mx
        Então Aguardo a confirmação de cadastro do relogio de mx "El Reloj fue creado con éxito"