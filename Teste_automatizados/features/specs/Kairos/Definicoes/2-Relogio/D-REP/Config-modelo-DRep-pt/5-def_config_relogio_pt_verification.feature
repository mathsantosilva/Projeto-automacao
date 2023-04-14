#language: pt

@relogio_pt_verificacao
Funcionalidade: Verificação dos campos das configurações de relogios de pt

    @config_relogio_pt_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios de pt

        Dado Faço login no sistema de pt
        Quando Navego ate a tela de configurações de relogios de pt
        Quando Clico para salvar a configuração de pt
        Então Verifico os campos obrigatorios para cadastro da configuração de pt


    @config_relogio_pt_valores_limites
    Cenario: Validação dos valores limites de pt

        Dado Faço login no sistema de pt
        Quando Navego ate a tela de configurações de relogios de pt
        Quando Preencho os campos ultrapassando a quantidade permitida e clico para salvar de pt
        Então Aguardo a mensagem de que o limite permitido na descrição é 50 de pt


    @config_relogio_pt_caracteres_especiais
    Cenario: Validação dos caracteres especiais de pt

        Dado Faço login no sistema de pt
        Quando Navego ate a tela de configurações de relogios de pt
        Quando Preencho os campos com caracteres especiais e clico em salvar de pt
        Então Aguardo uma mensagem de sucesso na criação da configuração de pt "A Configuração Relógio foi criada com sucesso"