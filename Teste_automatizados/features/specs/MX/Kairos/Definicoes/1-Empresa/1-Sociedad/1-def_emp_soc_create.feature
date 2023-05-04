#language: pt

@mx
@mx_definicoes
@mx_empresa
@mx_empresa_create
Funcionalidade: Criação de empresa
    Rotina responsavel pela criação de novas empresas dentro do mesmo banco

    Contexto: Acessando a tela de cadastro de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente mx
        Então faço o caminho até a tela cadastro de empresa

    @mx_empresa_create_rfc
    Cenario: Criação de Subempresa com RFC
        Dado que preencho os dados, uso RFC e clico em salvar
        Então deverá ser apresentado a mensagem "La Sociedad fue creada con éxito"

    @mx_empresa_create_rfc_looping
    Cenario: Criação de Subempresa com RFC
        Dado que cadastro empresa RFC em loopings
        Então deverá ser apresentado a mensagem "La Sociedad fue creada con éxito"
