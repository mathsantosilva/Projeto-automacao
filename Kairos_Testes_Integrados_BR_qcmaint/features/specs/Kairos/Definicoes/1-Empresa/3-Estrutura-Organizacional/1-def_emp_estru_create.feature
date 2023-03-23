#language: pt

@filial_create
Funcionalidade: Criação de estruturas 

    @estruturas_create
    Cenario: Criação de estruturas 

        Dado Acesso a tela de filiais para cadastrar
        Quando Cadastrando uma nova filial
        Quando Apertando no botão salvar
        Então Aguardo uma mensagem de confirmação "A Filial foi criada com sucesso"


    @estruturas_create_looping
    Cenario: Criação de estruturas em looping

        Dado Acesso a tela de estruturas para cadastrar
        Quando Cadastrando uma nova estrutura em looping
        Então Aguardo uma mensagem de confirmação "A Filial foi criada com sucesso"