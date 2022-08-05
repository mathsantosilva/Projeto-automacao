#language: pt

@relogio_cadastro_persistencia
Funcionalidade: Validação da persistencia de dados no cadastro dos relogios

    @relogio_cadastro_persistencia_dados
    Cenario: Cadastro do relogio D Rep com informações repetidas

        Dado Acesso a tela de relogios para cadastrar um relogio com informações iguais
        Quando Cadastro um relogio D Rep com informações para serem repetidas
        Quando Cadastro novamente um relogio D Rep com as mesmas informações e altero conforme for apresentado os erros
        Então Aguardo a mensagem de cadastro com sucesso "O Relógio foi adicionado com sucesso"