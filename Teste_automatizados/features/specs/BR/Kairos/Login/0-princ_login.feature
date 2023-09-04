#language: pt

@br
@br_login
Funcionalidade: Login
    Rotina resposavel pelo acesso a empresa 

    Contexto: Realizando login  no sistema
        Dado que entro na tela de login em "Dimep/Account/LogOn" no ambiente BR

    @login_dados_correto
    Cenario: Login com dados corretos

        Dado que insiro os dados de email e senha corretos
            |email|autostoreweb@dimep.com.br|
            |senha|1|
        Então deverá logar com sucesso na empresa BR e estar no path "/Dimep/Dashboard"

    @login_senha_incorreta
    Cenario: Login com a senha incorreta

        Dado que insiro os dados de email e senha incorretos
            |email|autostoreweb@dimep.com.br|
            |senha|123456789|
        Então devera informar a mensagem "Ops! Usuário e/ou senha incorreto"

    @login_email_incorreto
    Cenario: Login com a email incorreto

        Dado que insiro os dados de email incorreto e senha
            |email|testeincorreto@dimep.com.br|
            |senha|1|
        Então devera apresentar a mensagem "Ops! Usuário e/ou senha incorreto"

    @login_senha_alterada
    Cenario: Login com a senha incorreta

        Dado acesso a tela de alteração de senha
        Quando Insiro os dados atuais de login e senha 
            |email|autostoreweb@dimep.com.br|
            |senha|1|
        Quando insiro os dados de email e nova senha
            |email|autostoreweb@dimep.com.br|
            |senha|2|
        Então deverá logar com sucesso com a nova senha na empresa BR e estar no path "/Dimep/Dashboard"