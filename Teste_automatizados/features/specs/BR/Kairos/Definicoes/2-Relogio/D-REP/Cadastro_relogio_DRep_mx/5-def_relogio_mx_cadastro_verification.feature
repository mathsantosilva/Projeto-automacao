#language: pt

@relogio_mx_cadastro_verificacao
Funcionalidade: Verificação dos campos do cadastro de relogio de mx

    @cadastro_relogio_mx_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios de mx

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio de mx
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação de mx
        Quando Seleciono o modelo D Rep e clico para salvar o cadastro de mx
        Então Verifico os campos obrigatorios para cadastro do relogio modelo D Rep de mx


    @cadastro_relogio_mx_valores_limites
    Cenario: Validação dos valores limites de mx

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio de mx
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação de mx
        Quando Preencho os campos no cadastro do relogio ultrapassando a quantidade permitida e clico para salvar de mx
        Então Então clico em alterar e verifico se foi cadastrado com a quantidade correta de mx


    @cadastro_relogio_mx_caracteres_especiais
    Cenario: Validação dos caracteres especiais de mx

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio de mx
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação de mx
        Quando Preencho os campos no cadastro do relogio com caracteres especiais e clico em salvar de mx
        Então Aguardo uma mensagem de sucesso no cadastro do relogio de mx "El Reloj fue creado con éxito"