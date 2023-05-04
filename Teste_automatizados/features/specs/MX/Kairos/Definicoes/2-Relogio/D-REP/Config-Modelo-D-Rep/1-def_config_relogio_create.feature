#language: pt

@relogio_create_config
Funcionalidade: Criação de configuração do relogio

    @relogio_create_config_DRep
    Cenario: Criação de configuração do relogio D Rep

        Dado Acesso a tela de relogios para criar a configuração
        Quando Cadastrando uma nova configuração
        Quando Aperto no botão salvar a configuração
        Então Aguardo a confirmação de criacao da configuração "A Configuração Relógio foi criada com sucesso"