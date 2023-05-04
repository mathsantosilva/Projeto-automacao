#language: pt

@relogio_pt_update_cadastro
Funcionalidade: Atualização do cadastro de relogio de pt

    @relogio_pt_update_cadastro_DRep
    Cenario: Atualização do relogio D Rep de pt

        Dado Acesso a tela de relogios para atualizar o modelo D Rep de pt
        Quando Clico para alterar o relogio cadastrado e preencho com novas informações de pt
        Quando Clico para salvar a nova alteração do relogio de pt
        Então Aguardo a mensagem de que foi atualizado com sucesso de pt "Relógio editado com sucesso"