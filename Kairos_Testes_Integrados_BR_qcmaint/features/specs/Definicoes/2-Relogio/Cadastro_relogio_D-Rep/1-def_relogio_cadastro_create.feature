#language: pt

@relogio_create_cadastro
Funcionalidade: Cadastro do relogio

    @relogio_create_cadastro_DRep
    Cenario: Cadastro do relogio D Rep

        Dado Acesso a tela de relogios para cadastro do modelo D Rep
        Quando Cadastrando um novo relogio modelo D Rep
        Quando Aperto para salvar o cadastro do relogio
        Então Aguardo a confirmação de cadastro do relogio "O Relógio foi adicionado com sucesso"