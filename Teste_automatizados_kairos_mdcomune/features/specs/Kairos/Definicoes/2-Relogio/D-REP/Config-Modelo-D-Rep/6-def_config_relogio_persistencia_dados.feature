#language: pt

@relogio_persistencia
Funcionalidade: Validação da persistencia de dados das configurações dos relogios

    @relogio_persistencia_cod_repetido
    Cenario: Criação de configuração do relogio D Rep com codigo repetido

        Dado Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido
        Quando Cadastro uma nova configuração de relogio D Rep
        Quando Cadastro novamente uma nova configuração de relogio D Rep com o codigo igual
        Então Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo


    @relogio_persistencia_descricao_repetida
    Cenario: Criação de configuração do relogio D Rep

        Dado Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido
        Quando Cadastro uma nova configuração de relogio D Rep 2
        Quando Cadastro novamente uma nova configuração de relogio D Rep com a descrição igual
        Então Aguardo a mensagem de que ja existe uma configuração de relogio com a mesma descrição