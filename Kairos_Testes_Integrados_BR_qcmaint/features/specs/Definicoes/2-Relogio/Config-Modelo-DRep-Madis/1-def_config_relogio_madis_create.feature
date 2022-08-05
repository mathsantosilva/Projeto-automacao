#language: pt

@relogio_madis_create_config
Funcionalidade: Criação de configuração do relogio

    @relogio_madis_create_config_DRep
    Cenario: Criação de configuração do relogio D Rep

        Dado Acesso a tela de relogios para criar a configuração na madis
        Quando Cadastrando uma nova configuração na madis
        Quando Aperto no botão salvar a configuração na madis
        Então Aguardo a confirmação de criacao da configuração na madis "A Configuração Relógio foi criada com sucesso"