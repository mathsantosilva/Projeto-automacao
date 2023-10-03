#language: pt

@br
@br_definicoes
@br_filial
@br_filial_resources
Funcionalidade: Validação de resources de filiais
    Rotina responsável pela verificação dos campos das filiais criadas e editadas

    Contexto: Acessando a tela de filial
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de filiais para validar os campos

    @br_filial_resources_ptbr
    @br_filial_resources_ptbr_create 
    Cenario: Validando Resource da criação de filiais PTbr
        Quando vou para a criação de filiais para validar os campos
        Então passo por todos os campos da criação de filiais em Portugues-BR na criação
            |codigo                   |Código:                                            |
            |cei                      |CEI/CNO/CAEPF:                                     |
            |telefone                 |Telefone:                                          |
            |razao_social             |Razão social:                                      |
            |cnpj_cpf                 |CNPJ/CPF:                                          |
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
            |Localizacao              |Localização:                                       |

    @br_filial_resources_ptbr
    @br_filial_resources_ptbr_create
    Cenario: Validando Resource da edição de filiais PTbr
    	Quando altero uma filial para validar os campos 
        Então passo por todos os campos da edição de filiais em portugues-BR no update
            |codigo                   |Código:                                            |
            |cei                      |CEI/CNO/CAEPF:                                     |
            |telefone                 |Telefone:                                          |
            |razao_social             |Razão social:                                      |
            |cnpj_cpf                 |CNPJ/CPF:                                          |
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
            |Localizacao              |Localização:                                       |
    
    @br_empresa_resource_en
    @br_empresa_resource_en_create
    Cenario: Validando Resource no Create EN
        Dado que acesso a tela de empresa-EN
        Quando acesso a criação de empresas-EN
        Então todos os campos do create serão validados em Ingles

    @br_empresa_resource_en
    @br_empresa_resource_en_update
    Cenario: Validando Resource no update EN
        Dado que acesso a tela de empresas-EN
        Quando acesso o update de empresas-EN
        Então todos os campos do update serão validados em Ingles