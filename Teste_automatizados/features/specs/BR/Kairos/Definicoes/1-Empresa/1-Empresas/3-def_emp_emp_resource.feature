#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_resource
Funcionalidade: Resource empresas
    Rotina responsável pela verificação dos campos nos bancos criados e editados

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de empresa para validar os campos

    @br_empresa_resource_pt
    @br_empresa_resource_create_ptbr 
    Cenario: Validando Resource na criação de empresas PTbr
        Quando vou para a criação de empresas para validar os campos
        Então passo por todos os campos em Portugues-BR na criação
            |codigo                   |Código:                                            |
            |cei                      |CEI/CNO/CAEPF:                                     |
            |telefone                 |Telefone:                                          |
            |portaria_1510            |Utiliza portaria 1510:                             |
            |portaria_671             |Utiliza portaria 671:                              |
            |razao_social             |Razão Social:                                      |
            |cnpj_cpf                 |CNPJ/CPF:                                          |
            |ramo_atividade           |Ramo de atividade:                                 |
            |endereço                 |Endereço:                                          |
            |bairro                   |Bairro:                                            |
            |cidade                   |Cidade:                                            |
            |uf                       |UF:                                                |
            |pais                     |País:                                              |
            |url                      |URL:                                               |
            |email                    |Email:                                             |
            |periodo_abertura         |Data Inicial para Tratamento de Ponto:             |
            |fuso                     |Fuso horário:                                      |
            |horario_verao            |Horário de verão:                                  |
            |data_inicio_horario_verão|Início horário de verão:                           |
            |data_fim_horario_verao   |Fim horário de verão:                              |
            |data_previsao            |Data de Previsão do Próximo Fechamento:            |
            |data_limite              |Data Limite para Tratamento de Ponto:              |
            |chave_connect            |Chave do Kairos Connect :                          |
            |chave_publica            |Chave pública para geração de Comprovante de Ponto:|
            |visica                   |Utiliza Facial Visica:                             |
            |logo                     |Logotipo personalizado:                            |
            |Localizacao              |Localização:                                       |
            |adendo                   |Adendo LGPD:                                       |

    @br_empresa_resource_pt
    @br_empresa_resource_update_ptbr
    Cenario: Validando Resource na edição de empresas PTbr
    	Quando altero uma empresa para validar os campos 
        Então passo por todos os campos em portugues-BR no update
            |codigo                   |Código:                                            |
            |cei                      |CEI/CNO/CAEPF:                                     |
            |telefone                 |Telefone:                                          |
            |portaria_1510            |Utiliza portaria 1510:                             |
            |portaria_671             |Utiliza portaria 671:                              |
            |razao_social             |Razão Social:                                      |
            |cnpj_cpf                 |CNPJ/CPF:                                          |
            |ramo_atividade           |Ramo de atividade:                                 |
            |endereço                 |Endereço:                                          |
            |bairro                   |Bairro:                                            |
            |cidade                   |Cidade:                                            |
            |uf                       |UF:                                                |
            |pais                     |País:                                              |
            |url                      |URL:                                               |
            |email                    |Email:                                             |
            |fuso                     |Fuso horário:                                      |
            |horario_verao            |Horário de verão:                                  |
            |data_inicio_horario_verão|Início horário de verão:                           |
            |data_fim_horario_verao   |Fim horário de verão:                              |
            |data_previsao            |Data de Previsão do Próximo Fechamento:            |
            |data_limite              |Data Limite para Tratamento de Ponto:              |
            |chave_connect            |Chave do Kairos Connect :                          |
            |chave_publica            |Chave pública para geração de Comprovante de Ponto:|
            |visica                   |Utiliza Facial Visica:                             |
            |logo                     |Logotipo personalizado:                            |
            |Localizacao              |Localização:                                       |
            |adendo                   |Adendo LGPD:                                       |
    
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
