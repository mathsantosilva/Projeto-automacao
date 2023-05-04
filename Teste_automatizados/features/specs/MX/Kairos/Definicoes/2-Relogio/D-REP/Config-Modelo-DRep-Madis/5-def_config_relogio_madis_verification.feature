#language: pt

@relogio_madis_verificacao
Funcionalidade: Verificação dos campos das configurações de relogios da madis

    @config_relogio_madis_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios da madis

        Dado Faço login no sistema da madis
        Quando Navego ate a tela de configurações de relogios da madis
        Quando Clico para salvar a configuração da madis
        Então Verifico os campos obrigatorios para cadastro da configuração da madis


    @config_relogio_madis_valores_limites
    Cenario: Validação dos valores limites da madis

        Dado Faço login no sistema da madis
        Quando Navego ate a tela de configurações de relogios da madis
        Quando Preencho os campos ultrapassando a quantidade permitida e clico para salvar da madis
        Então Aguardo a mensagem de que o limite permitido na descrição é 50 da madis


    @config_relogio_madis_caracteres_especiais
    Cenario: Validação dos caracteres especiais da madis

        Dado Faço login no sistema da madis
        Quando Navego ate a tela de configurações de relogios da madis
        Quando Preencho os campos com caracteres especiais e clico em salvar da madis
        Então Aguardo uma mensagem de sucesso na criação da configuração da madis "A Configuração Relógio foi criada com sucesso"