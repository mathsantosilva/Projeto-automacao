#language: pt

@relogio_cadastro_verificacao
Funcionalidade: Verificação dos campos do cadastro de relogio

    @cadastro_relogio_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação
        Quando Seleciono o modelo D Rep e clico para salvar o cadastro
        Então Verifico os campos obrigatorios para cadastro do relogio modelo D Rep


    @cadastro_relogio_valores_limites
    Cenario: Validação dos valores limites

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação
        Quando Preencho os campos no cadastro do relogio ultrapassando a quantidade permitida e clico para salvar
        Então Então clico em alterar e verifico se foi cadastrado com a quantidade correta


    @cadastro_relogio_caracteres_especiais
    Cenario: Validação dos caracteres especiais

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação
        Quando Preencho os campos no cadastro do relogio com caracteres especiais e clico em salvar
        Então Aguardo uma mensagem de sucesso no cadastro do relogio "O Relógio foi adicionado com sucesso"