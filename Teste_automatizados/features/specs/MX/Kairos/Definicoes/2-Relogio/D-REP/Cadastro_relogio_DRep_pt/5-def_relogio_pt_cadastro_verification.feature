#language: pt

@relogio_pt_cadastro_verificacao
Funcionalidade: Verificação dos campos do cadastro de relogio de pt

    @cadastro_relogio_pt_campos_obrigatorios
    Cenario: Validação dos campos obrigatorios de pt

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio de pt
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação de pt
        Quando Seleciono o modelo D Rep e clico para salvar o cadastro de pt
        Então Verifico os campos obrigatorios para cadastro do relogio modelo D Rep de pt


    @cadastro_relogio_pt_valores_limites
    Cenario: Validação dos valores limites de pt

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio de pt
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação de pt
        Quando Preencho os campos no cadastro do relogio ultrapassando a quantidade permitida e clico para salvar de pt
        Então Então clico em alterar e verifico se foi cadastrado com a quantidade correta de pt


    @cadastro_relogio_pt_caracteres_especiais
    Cenario: Validação dos caracteres especiais de pt

        Dado Logo no sistema para fazer as verificações dos campos no cadastro de relogio de pt
        Quando Navego ate a tela de cadastro de relogios para fazer a verificação de pt
        Quando Preencho os campos no cadastro do relogio com caracteres especiais e clico em salvar de pt
        Então Aguardo uma mensagem de sucesso no cadastro do relogio de pt "O Relógio foi criado com sucesso"