#language: pt

@relogio_pt_cadastro_persistencia
Funcionalidade: Validação da persistencia de dados no cadastro dos relogios de pt

    @relogio_pt_cadastro_persistencia_dados
    Cenario: Cadastro do relogio D Rep com informações repetidas de pt

        Dado Acesso a tela de relogios para cadastrar um relogio com informações iguais de pt
        Quando Cadastro um relogio D Rep com informações para serem repetidas de pt
        Quando Cadastro novamente um relogio D Rep com as mesmas informações e altero conforme for apresentado os erros de pt
        Então Aguardo a mensagem de cadastro com sucesso de pt "O Relógio foi criado com sucesso"
