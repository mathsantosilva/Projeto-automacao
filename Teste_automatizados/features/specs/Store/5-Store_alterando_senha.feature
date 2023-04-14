#language: pt

@store_geral
@store_senha
Funcionalidade: Alteração

    @store_alterar_senha_empresa
    Cenario: Altero a senha da empresa 

        Dado realizo o login e vou até a tela de licença ativa
        Quando pesquiso a empresa e vou em ver usuarios
        Quando altero a senha do usuario e salvo
            |senha|2|
        Quando vou até o kairos e redefino a senha
            |senha_antiga|2                          |
            |senha_nova  |1                          |
            |mensagem    |Senha alterada com sucesso.|
        Então deverá conseguir logar na empresa com sucesso e apresentar a mensagem "Seja Bem Vindo ao Kairos!"