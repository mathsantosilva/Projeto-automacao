#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_resource
Funcionalidade: Resource empresas
    Rotina responsavel pela verificação dos bancos create e update

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de empresa para validar os campos

    @br_empresa_resource_br
    @br_empresa_resource_create_ptbr 
    Cenario: Validando Resource no Create PTbr
        Quando vou para a criação de empresas
        Então valido os campos em Portugues-BR na criação

    @br_empresa_resource_br
    @br_empresa_resource_update_ptbr
    Cenario: Validando Resource no update PTbr
    	Quando altero uma empresa para validar os campos 
        Então valida os campos em portugues-BR no update
    
    @br_empresa_resource_en
    @br_empresa_resource_create_en 
    Cenario: Validando Resource no Create EN
        Dado que acesso a tela de empresa-EN
        Quando acesso a criação de empresas-EN
        Então todos os campos do create serão validados em Ingles

    @br_empresa_resource_en
    @br_empresa_resource_update_en
    Cenario: Validando Resource no update EN
        Dado que acesso a tela de empresas-EN
        Quando acesso o update de empresas-EN
        Então todos os campos do update serão validados em Ingles
