#language: pt

@relogio_madis_cadastro_verificacao
Funcionalidade: Verificação dos campos do cadastro de relogio da madis

    @cadastro_relogio_madis_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios da madis

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio da madis
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação da madis
        Quando Seleciono o modelo D Rep e clico para salvar o cadastro da madis
        Então Verifico os campos obrigatorios para cadastro do relogio modelo D Rep da madis


    @cadastro_relogio_madis_valores_limites
    Cenario: Validação dos valores limites da madis

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio da madis
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação da madis
        Quando Preencho os campos no cadastro do relogio ultrapassando a quantidade permitida e clico para salvar da madis
        Então Então clico em alterar e verifico se foi cadastrado com a quantidade correta da madis


    @cadastro_relogio_madis_caracteres_especiais
    Cenario: Validação dos caracteres especiais da madis

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio da madis
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação da madis
        Quando Preencho os campos no cadastro do relogio com caracteres especiais e clico em salvar da madis
        Então Aguardo uma mensagem de sucesso no cadastro do relogio da madis "O Relógio foi adicionado com sucesso"