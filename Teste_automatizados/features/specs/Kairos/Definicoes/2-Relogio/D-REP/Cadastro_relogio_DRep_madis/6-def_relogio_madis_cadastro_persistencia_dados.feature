#language: pt

@relogio_madis_cadastro_persistencia
Funcionalidade: Validação da persistencia de dados no cadastro dos relogios da madis

    @relogio_madis_cadastro_persistencia_dados
    Cenario: Cadastro do relogio D Rep com informações repetidas da madis

        Dado Acesso a tela de relogios para cadastrar um relogio com informações iguais da madis
        Quando Cadastro um relogio D Rep com informações para serem repetidas da madis
        Quando Cadastro novamente um relogio D Rep com as mesmas informações e altero conforme for apresentado os erros da madis
        Então Aguardo a mensagem de cadastro com sucesso da madis "O Relógio foi adicionado com sucesso"