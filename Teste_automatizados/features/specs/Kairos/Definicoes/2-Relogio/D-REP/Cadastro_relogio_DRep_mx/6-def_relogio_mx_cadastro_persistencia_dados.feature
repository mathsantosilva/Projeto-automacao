#language: pt

@relogio_mx_cadastro_persistencia
Funcionalidade: Validação da persistencia de dados no cadastro dos relogios de mx

    @relogio_mx_cadastro_persistencia_dados
    Cenario: Cadastro do relogio D Rep com informações repetidas de mx

        Dado Acesso a tela de relogios para cadastrar um relogio com informações iguais de mx
        Quando Cadastro um relogio D Rep com informações para serem repetidas de mx
        Quando Cadastro novamente um relogio D Rep com as mesmas informações e altero conforme for apresentado os erros de mx
        Então Aguardo a mensagem de cadastro com sucesso de mx "El Reloj fue creado con éxito"
