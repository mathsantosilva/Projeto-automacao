#language: pt

@store_geral
@store_cadastro_empresa
Funcionalidade: Cadastro

    @store_cadastro_empresa_RFC
    Cenario: cadastro de uma empresa com RFC

        Dado que acesso a store "Store/admin" e vou até a tela de cadastro
        Quando Preencho os dados necessarios utilizando RFC
            |plano|PLANO BASE DE TESTE|
            |ramo|Industrias Metalicas Basicas|
            |idioma|Español|
            |mensagem|Espere miestras el catastro es realizado|
        Então deverá informar a mensagem de "Empresa y Usuario cadastrados con éxito."

    # @store_cadastro_empresa_CPF
    # Cenario: cadastro de uma empresa com CPF

    #     Dado que acesso a store "Store/admin" e vou até a tela de cadastro
    #     Quando Preencho os dados necessarios utilizando CPF e o plano "PLANO BASE DE TESTE"
    #     Então deverá informar a mensagem de "Empresa e usuário cadastrados com sucesso"