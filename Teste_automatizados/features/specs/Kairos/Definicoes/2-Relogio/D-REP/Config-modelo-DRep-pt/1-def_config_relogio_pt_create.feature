#language: pt

@relogio_pt_create_config
Funcionalidade: Criação de configuração do relogio de pt

    @relogio_pt_create_config_DRep
    Cenario: Criação de configuração do relogio D Rep de pt

        Dado Acesso a tela de relogios para criar a configuração de pt
        Quando Cadastrando uma nova configuração de pt
        Quando Aperto no botão salvar a configuração de pt
        Então Aguardo a confirmação de criacao da configuração de pt "A Configuração Relógio foi criada com sucesso"