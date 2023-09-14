#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_update
Funcionalidade: Alteração de Empresa
    Rotina responsável pela alteração de bancos já criados

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de empresas para alterar uma empresa existente 


    @br_empresa_update_cnpj
    Cenario: Alteração da empresa criada com CNPJ
        Dado que altero os dados da empresa com CNPJ
        Então deverá apresentar a mensagem de sucesso na alteração da empresa "Empresa editada com sucesso"

    @br_empresa_update_cpf
    Cenario: Alteração da empresa criada com CPF
        Dado que altero os dados da empresa com CPF
        Então deverá apresentar a mensagem de sucesso na alteração da empresa "Empresa editada com sucesso"