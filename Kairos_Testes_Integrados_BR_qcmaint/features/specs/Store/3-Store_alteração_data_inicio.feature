#language: pt

@store_geral
@store_alteração_data_inicial
Funcionalidade: Alteração

    @store_alteração_data_inicial_CNPJ
    Cenario: Altero a data inicial da empresa cadastrada

        Dado acesso a tela de gestão da empresa
        Quando Pesquiso a empresa e edito as configurações
        Quando Altero a data inicial da empresa e salvo
        Então deverá apresentar a mensagem "Empresa editada com sucesso."