#language: pt

@login_cookie
Funcionalidade: Login usando cookie

    @login_cookie_recentes
    Cenario: Login com dados corretos

        Dado que acesso a pagina inicial
        Então deverá logar com sucesso na empresa e apresentar a razão social da empresa "Testes mobile - 23-02-22 - 1010"