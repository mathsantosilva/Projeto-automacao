#language: pt

@br
@br_definicoes
@br_filial
@br_filial_create
Funcionalidade: Criação de filiais
    Rotina responsável pela criação de novas filiais dentro do mesmo banco

    Contexto: Acessando a tela de cadastro de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de filiais para cadastrar uma nova filial 

    @br_filial_create_unico
    @br_filial_create_cnpj
    Cenario: Criação de filiais com CNPJ
        Dado que preencho os dados, utilizo o cnpj para cadastrar a filial e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da filial "A Filial foi criada com sucesso"
    
    @br_filial_create_unico
    @br_filial_create_cpf
    Cenario: Criação de filiais com CPF
        Dado que preencho os dados, utilizo o cpf para cadastrar a filial e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da filial "A Filial foi criada com sucesso"

    @br_filial_create_unico
    @br_filial_create_cnpj_exclusao
    Cenario: Criação de filiais com CNPJ para serem excluidas
        Dado que preencho os dados, utilizo o cnpj para cadastrar a filial que será excluida e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da filial "A Filial foi criada com sucesso"
    
    @br_filial_create_unico
    @br_filial_create_cpf_exclusao
    Cenario: Criação de filiais com CPF para serem excluidas
        Dado que preencho os dados, utilizo o cpf para cadastrar a filial que será excluida e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da filial "A Filial foi criada com sucesso"

    @br_filial_create_cnpj_looping
    Cenario: Criação de filiais em looping utilizando CNPJ
        Dado que preencho os dados da filial, utilizo CNPJ em looping e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da filial "A Filial foi criada com sucesso"

    @br_filial_create_cpf_looping
    Cenario: Criação de filiais em looping utilizando CPF
        Dado que preencho os dados da filial, utilizo CPF em looping e clico em salvar
        Então deverá apresentar a mensagem de sucesso no cadastro da filial "A Filial foi criada com sucesso"