#language: pt

@store_geral
@store_cadastro_empresa
Funcionalidade: Cadastro

    @store_cadastro_empresa_CNPJ
    Cenario: cadastro de uma empresa com CNPJ

        Dado que acesso a store "Store/admin" e vou até a tela de cadastro
        Quando Preencho os dados necessarios utilizando CNPJ e o plano "PLANO BASE DE TESTE"
        Então deverá informar a mensagem de "Empresa e usuário cadastrados com sucesso"

    @store_cadastro_empresa_CPF
    Cenario: cadastro de uma empresa com CPF

        Dado que acesso a store "Store/admin" e vou até a tela de cadastro
        Quando Preencho os dados necessarios utilizando CPF e o plano "PLANO BASE DE TESTE"
        Então deverá informar a mensagem de "Empresa e usuário cadastrados com sucesso"