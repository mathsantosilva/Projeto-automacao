#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_create
Funcionalidade: Criação de empresa
    Rotina responsavel pela criação de novas empresas dentro do mesmo banco

    Contexto: Acessando a tela de cadastro de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então faço o caminho até a tela cadastro de empresa BR

    @br_empresa_create_unico
    @br_empresa_create_cnpj
    Cenario: Criação de Subempresa com CNPJ
        Dado que preencho os dados, uso CNPJ e clico em salvar
        Então deverá apresentar uma mensagem "A Empresa foi criada com sucesso"

    @br_empresa_create_unico
    @br_empresa_create_cpf
    Cenario: Criação de Subempresa com CPF
        Dado que preencho os dados, uso CPF e clico em salvar
        Então deverá apresentar uma mensagem "A Empresa foi criada com sucesso"

    @br_empresa_create_cnpj_looping
    Cenario: Criação de Subempresa com CNPJ
        Dado que preencho os dados, uso CNPJ em looping
        Então deverá apresentar uma mensagem "A Empresa foi criada com sucesso"

    @br_empresa_create_cpf_looping
    Cenario: Criação de Subempresa com CPF
        Dado que preencho os dados, uso CPF em looping
        Então deverá apresentar uma mensagem "A Empresa foi criada com sucesso"