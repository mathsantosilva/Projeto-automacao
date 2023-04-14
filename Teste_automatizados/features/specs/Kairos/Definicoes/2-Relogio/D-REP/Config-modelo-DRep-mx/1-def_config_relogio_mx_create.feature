#language: pt

@relogio_mx_create_config
Funcionalidade: Criação de configuração do relogio de mx

    @relogio_mx_create_config_DRep
    Cenario: Criação de configuração do relogio D Rep de mx

        Dado Acesso a tela de relogios para criar a configuração de mx
        Quando Cadastrando uma nova configuração de mx
        Quando Aperto no botão salvar a configuração de mx
        Então Aguardo a confirmação de criacao da configuração de mx "La Configuración del reloj fue creada con éxito"