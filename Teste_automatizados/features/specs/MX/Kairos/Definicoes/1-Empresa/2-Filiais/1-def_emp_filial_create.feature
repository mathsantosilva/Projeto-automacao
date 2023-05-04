#language: pt

@mx
@mx_definicoes
@mx_filial
@filial_create
Funcionalidade: Criação de filiais

    @filial_create_cnpj
    Cenario: Criação de filiais com CNPJ

        Dado Acesso a tela de filiais para cadastrar
        Quando Cadastrando uma nova filial
        Quando Apertando no botão salvar
        Então Aguardo uma mensagem de confirmação "A Filial foi criada com sucesso"


    @filial_create_cnpj_looping
    Cenario: Criação de filiais com CNPJ

        Dado Acesso a tela de filiais para cadastrar
        Quando Cadastrando uma nova filial cnpj em looping
        Então Aguardo uma mensagem de confirmação "A Filial foi criada com sucesso"