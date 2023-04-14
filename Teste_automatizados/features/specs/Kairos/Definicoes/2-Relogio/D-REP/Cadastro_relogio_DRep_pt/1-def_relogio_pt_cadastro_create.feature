#language: pt

@relogio_pt_create_cadastro
Funcionalidade: Cadastro do relogio de pt

    @relogio_pt_create_cadastro_DRep
    Cenario: Cadastro do relogio D Rep de pt

        Dado Acesso a tela de relogios para cadastro do modelo D Rep de pt
        Quando Cadastrando um novo relogio modelo D Rep de pt
        Quando Aperto para salvar o cadastro do relogio de pt
        Então Aguardo a confirmação de cadastro do relogio de pt "O Relógio foi criado com sucesso"