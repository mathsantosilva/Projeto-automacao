#language: pt

@relogio_madis_update_cadastro
Funcionalidade: Atualização do cadastro de relogio da madis

    @relogio_madis_update_cadastro_DRep
    Cenario: Atualização do relogio D Rep da madis

        Dado Acesso a tela de relogios para atualizar o modelo D Rep da madis
        Quando Clico para alterar o relogio cadastrado e preencho com novas informações da madis
        Quando Clico para salvar a nova alteração do relogio da madis
        Então Aguardo a mensagem de que foi atualizado com sucesso da madis "Relógio editado com sucesso"