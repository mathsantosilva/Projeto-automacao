#language: pt

@relogio_mx_update_cadastro
Funcionalidade: Atualização do cadastro de relogio de mx

    @relogio_mx_update_cadastro_DRep
    Cenario: Atualização do relogio D Rep de mx

        Dado Acesso a tela de relogios para atualizar o modelo D Rep de mx
        Quando Clico para alterar o relogio cadastrado e preencho com novas informações de mx
        Quando Clico para salvar a nova alteração do relogio de mx
        Então Aguardo a mensagem de que foi atualizado com sucesso de mx "Reloj editado con éxito"