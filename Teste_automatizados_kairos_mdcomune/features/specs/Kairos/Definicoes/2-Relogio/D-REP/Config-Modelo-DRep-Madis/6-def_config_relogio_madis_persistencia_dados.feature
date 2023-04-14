#language: pt

@relogio_madis_persistencia
Funcionalidade: Validação da persistencia de dados das configurações dos relogios da madis

    @relogio_madis_persistencia_cod_e_descricao_repetido
    Cenario: Criação de configuração do relogio D Rep com codigo e descrição repetido da madis

        Dado Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido da madis
        Quando Cadastro uma nova configuração de relogio D Rep da madis
        Quando Cadastro novamente uma nova configuração de relogio D Rep com o codigo e descrição iguais da madis
        Então Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo e descrição da madis