#language: pt

@install
Funcionalidade: Validar instalação
    Rotina responsável pela validação da instalação
    
    Contexto: Acessando a tela de cadastro de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então pego a URL e faço um print dela no console  
