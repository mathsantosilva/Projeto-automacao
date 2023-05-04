#language: pt

@relogio_mx_persistencia
Funcionalidade: Validação da persistencia de dados das configurações dos relogios de mx

    @relogio_mx_persistencia_cod_e_descricao_repetido
    Cenario: Criação de configuração do relogio D Rep com codigo e descrição repetido de mx

        Dado Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido de mx
        Quando Cadastro uma nova configuração de relogio D Rep de mx
        Quando Cadastro novamente uma nova configuração de relogio D Rep com o codigo e descrição iguais de mx
        Então Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo e descrição de mx