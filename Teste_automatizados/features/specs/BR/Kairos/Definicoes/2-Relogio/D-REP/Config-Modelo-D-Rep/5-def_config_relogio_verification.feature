#language: pt

@relogio_verificacao
Funcionalidade: Verificação dos campos das configurações de relogios

    @config_relogio_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios

        Dado Faço login no sistema
        Quando Navego ate a tela de configurações de relogios
        Quando Clico para salvar a configuração
        Então Verifico os campos obrigatorios para cadastro da configuração


    @config_relogio_valores_limites
    Cenario: Validação dos valores limites

        Dado Faço login no sistema
        Quando Vou ate a tela de configurações de relogios
        Quando Preencho os campos ultrapassando a quantidade permitida e clico para salvar
        Então Aguardo a mensagem de que o limite permitido na descrição é 50


    @config_relogio_caracteres_especiais
    Cenario: Validação dos caracteres especiais

        Dado Faço login no sistema
        Quando Acesso a tela de configurações de relogios
        Quando Preencho os campos com caracteres especiais e clico em salvar
        Então Aguardo uma mensagem de sucesso na criação da configuração "A Configuração Relógio foi criada com sucesso"