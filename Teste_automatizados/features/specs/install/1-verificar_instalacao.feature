#language: pt

@verificar_instalacao
Funcionalidade: Validar instalação
    Rotina responsável pela validação da instalação
    
    Contexto: Acessando tela de login do sistema
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então pego a URL e faço um print dela no console  

    Cenario: Verificar a url visitada
        Então a url deverá ser igual a pretendida "/Dimep/Dashboard"