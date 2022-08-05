#language: pt

@relogio_mx_verificacao
Funcionalidade: Verificação dos campos das configurações de relogios de mx

    @config_relogio_mx_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios de mx

        Dado Faço login no sistema de mx
        Quando Navego ate a tela de configurações de relogios de mx
        Quando Clico para salvar a configuração de mx
        Então Verifico os campos obrigatorios para cadastro da configuração de mx


    @config_relogio_mx_valores_limites
    Cenario: Validação dos valores limites de mx

        Dado Faço login no sistema de mx
        Quando Navego ate a tela de configurações de relogios de mx
        Quando Preencho os campos ultrapassando a quantidade permitida e clico para salvar de mx
        Então Aguardo a mensagem de que o limite permitido na descrição é 50 de mx


    @config_relogio_mx_caracteres_especiais
    Cenario: Validação dos caracteres especiais de mx

        Dado Faço login no sistema de mx
        Quando Navego ate a tela de configurações de relogios de mx
        Quando Preencho os campos com caracteres especiais e clico em salvar de mx
        Então Aguardo uma mensagem de sucesso na criação da configuração de pt "La Configuración del reloj fue creada con éxito"