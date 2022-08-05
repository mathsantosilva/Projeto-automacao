#language: pt

@relogio_mx_delete_config
Funcionalidade: Deletando a configuração do relogio de mx

    @relogio_mx_delete_config_DRep
    Cenario: Deletando a configuração do relogio D Rep de mx

        Dado Acesso a tela de relogios para deletar a configuração de mx
        Quando deleto a configuração de mx
        Quando Confirmo a remoção da configuração de mx
        Então Aguardo a confirmação de remoção da configuração de mx "A Configuración del reloj fue removido con éxito"