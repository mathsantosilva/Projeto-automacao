#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_create
Funcionalidade: Criação de empresa
    Rotina responsável pela criação de novas empresas dentro do mesmo banco
    
    Contexto: Acessando a tela de cadastro de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de empresas para cadastrar uma nova empresa 

    @br_empresa_create_unico
    @br_empresa_create_cnpj
    Cenario: Criação de Subempresa com CNPJ
        Dado que preencho os dados, uso CNPJ e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da empresa "A Empresa foi criada com sucesso"

    @br_empresa_create_unico
    @br_empresa_create_cpf
    Cenario: Criação de Subempresa com CPF
        Dado que preencho os dados, uso CPF e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da empresa "A Empresa foi criada com sucesso"

    @br_empresa_create_cnpj_looping
    Cenario: Criação de Subempresa em looping utilizando CNPJ
        Dado que preencho os dados da sub-empresa e utilizo CNPJ em looping
        Então deverá apresentar a mensagem de sucesso no cadastro da empresa "A Empresa foi criada com sucesso"

    @br_empresa_create_cpf_looping
    Cenario: Criação de Subempresa em looping utilizando CPF
        Dado que preencho os dados da sub-empresa e utilizo CPF em looping
        Então deverá apresentar a mensagem de sucesso no cadastro da empresa "A Empresa foi criada com sucesso"
