#language: pt

@br
@br_definicoes
@br_filial
@br_filial_update
Funcionalidade: Alteração de filiais
    Rotina responsável pela alteração de filiais já criadas

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de filiais para alterar uma filial existente 

    @br_filial_update_cnpj
    Cenario: Alteração de filial criada com CNPJ
        Dado que altero os dados da filial com CNPJ
        Então deverá apresentar a mensagem de sucesso na alteração da filial "Filial editada com sucesso"

    @br_filial_update_cpf
    Cenario: Alteração de filial criada com CPF
        Dado que altero os dados da filial com CPF
        Então deverá apresentar a mensagem de sucesso na alteração da filial "Filial editada com sucesso"
