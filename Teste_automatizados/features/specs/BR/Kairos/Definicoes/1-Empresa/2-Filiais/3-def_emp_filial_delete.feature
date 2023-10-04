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
    
    @br_filial_delete_cnpj
    Cenario: Removendo a empresa filial criada com CNPJ
        Dado que clico na ultima filial criada com CNPJ na lista 
        Então deverá apresentar a mensagem de sucesso na remoção da filial "A Filial foi removida com sucesso"
    
    @br_filial_delete_cpf
    Cenario: Removendo a empresa filial criada com CPF
        Dado que clico na ultima filial criada com CPF na lista 
        Então deverá apresentar a mensagem de sucesso na remoção da filial "A Filial foi removida com sucesso"