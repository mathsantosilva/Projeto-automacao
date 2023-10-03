#language: pt

@br
@br_definicoes
@br_filial
@br_filial_delete
Funcionalidade: Remoção de de filiais
    Rotina responsável pela remoção de filiais já criadas

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de filiais para remover uma filial existente 

    Cenario: Removendo a empresa filial
        Dado que clico na ultima filial apresentada na lista
        Então deverá apresentar a mensagem de sucesso na remoção da filial "A Filial foi removida com sucesso"