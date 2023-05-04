#language: pt

@relogio_madis_create_cadastro
Funcionalidade: Cadastro do relogio da madis

    @relogio_madis_create_cadastro_DRep
    Cenario: Cadastro do relogio D Rep da madis

        Dado Acesso a tela de relogios para cadastro do modelo D Rep da madis
        Quando Cadastrando um novo relogio modelo D Rep da madis
        Quando Aperto para salvar o cadastro do relogio da madis
        Então Aguardo a confirmação de cadastro do relogio da madis "O Relógio foi adicionado com sucesso"