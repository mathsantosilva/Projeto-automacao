#language: pt

@relogio_pt_persistencia
Funcionalidade: Validação da persistencia de dados das configurações dos relogios de pt

    @relogio_pt_persistencia_cod_e_descricao_repetido
    Cenario: Criação de configuração do relogio D Rep com codigo e descrição repetido de pt

        Dado Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido de pt
        Quando Cadastro uma nova configuração de relogio D Rep de pt
        Quando Cadastro novamente uma nova configuração de relogio D Rep com o codigo e descrição iguais de pt
        Então Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo e descrição de pt