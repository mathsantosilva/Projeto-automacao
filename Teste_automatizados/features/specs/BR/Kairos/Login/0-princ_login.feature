#language: pt

@login
Funcionalidade: Login

    @login_dados_correto
    Cenario: Login com dados corretos

        Dado que acesso a tela de Login em "Dimep/Account/LogOn"
        Quando insiro os dados de email e senha corretos
            |email|teste198652@dimep.com.br|
            |senha|1|
        Então deverá logar com sucesso na empresa e estar no path "Dimep/Dashboard"

    @login_senha_incorreta
    Cenario: Login com a senha incorreta

        Dado que acesso a tela de Login em "Dimep/Account/LogOn"
        Quando insiro os dados de email e senha incorretos
            |email|teste198652@dimep.com.br|
            |senha|123456789|
        Então devera informar a mensagem "Ops! Usuário e/ou senha incorreto"

    @login_email_incorreto
    Cenario: Login com a email incorreto

        Dado que acesso a tela de Login em "Dimep/Account/LogOn"
        Quando insiro os dados de email incorreto e senha
            |email|testeincorreto@dimep.com.br|
            |senha|1|
        Então devera apresentar a mensagem "Ops! Usuário e/ou senha incorreto"

    @login_senha_alterada
    Cenario: Login com a senha incorreta

        Dado que acesso a tela de Login em "Dimep/Account/LogOn"
        Quando acesso a tela de alteração de senha
        Quando Insiro os dados atuais de login e senha 
            |email|teste16578@dimep.com.br|
            |senha|1|
        Quando insiro os dados de email e nova senha
            |email|teste16578@dimep.com.br|
            |senha|2|
        Então deverá logar com sucesso com a senha nova estar no path "Dimep/Dashboard"