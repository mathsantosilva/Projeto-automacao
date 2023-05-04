#language: pt

@store_geral
@store_login
Funcionalidade: Login

    @Store_login_correto
    Cenario: Login na store com dados corretos

        Dado que acesso a tela de Login Emissão de nota da store com o cookie já setado
        Então deverá apresentar o nome do usuario logado "Laboratorio Qualidade"

