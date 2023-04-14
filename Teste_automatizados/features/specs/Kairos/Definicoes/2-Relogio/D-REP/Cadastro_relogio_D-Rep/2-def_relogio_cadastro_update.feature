#language: pt

@relogio_update_cadastro
Funcionalidade: Atualização do cadastro de relogio

    @relogio_update_cadastro_DRep
    Cenario: Atualização do relogio D Rep

        Dado Acesso a tela de relogios para atualizar o modelo D Rep
        Quando Clico para alterar o relogio cadastrado e preencho com novas informações
        Quando Clico para salvar a nova alteração do relogio
        Então Aguardo a mensagem de que foi atualizado com sucesso "Relógio editado com sucesso"