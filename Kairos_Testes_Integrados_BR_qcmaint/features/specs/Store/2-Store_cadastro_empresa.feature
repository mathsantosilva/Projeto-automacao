#language: pt

@store_geral
@store_cadastro_empresa
Funcionalidade: Cadastro

    @store_cadastro_empresa_cnpj
    Cenario: cadastro de uma empresa com CNPJ

        Dado que acesso a tela de cadastro de empresa
        Quando Preencho os dados necessarios utilizando CNPJ
        Então deverá informar a mensagem de "Empresa e usuário cadastrados com sucesso"

    @store_cadastro_empresa_CPF
    Cenario: cadastro de uma empresa com CPF

        Dado que acesso a tela de cadastro de empresa
        Quando Preencho os dados necessarios utilizando CPF
        Então deverá informar a mensagem de "Empresa e usuário cadastrados com sucesso"