#language: pt

@BR_empresa_create
Funcionalidade: Criação de empresa

    @empresa_create_cnpj
    Cenario: Criação de Subempresa com CNPJ
        Dado que vou ate a tela de empresas
        Quando preencho os dados e uso cnpj
        Quando aperto no botão salvar
        Então deverá apresentar uma mensagem "A Empresa foi criada com sucesso"

    @empresa_create_cpf
    Cenario: Criação de Subempresa com CPF
        Dado que vou ate a tela de empresas
        Quando preencho os dados e uso cpf
        Quando clico no botão salvar
        Então devo receber uma mensagem "A Empresa foi criada com sucesso"

    @empresa_create_cnpj_looping
    Cenario: Criação de Subempresa com CNPJ
        Dado que vou ate a tela de empresas
        Quando cadastro empresa cnpj em loopings
        Então devo receber uma mensagem "A Empresa foi criada com sucesso"

    @empresa_create_cpf_looping
    Cenario: Criação de Subempresa com CPF
        Dado que vou ate a tela de empresas
        Quando cadastro empresa cpf em loopings
        Então devo receber uma mensagem "A Empresa foi criada com sucesso"
