#language: pt

@br
@br_definicoes
@br_relatorio_personalizado
Funcionalidade: Criação de empresa
    Rotina responsavel pela criação de relatorio personalizado

    Contexto: Acessando a tela de cadastro de relatorio personalizado
        Dado que realizo o login pela tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então faço o caminho até a tela cadastro de relatorio personalizado

    @br_relatorio_personalizado_create_completo
    Cenario: Criação de relatorio personalizado completo
        Dado que preenche as colunas, insere todos os campos e insere o nome "Rel total" no relatorio
            |campo_tipo_1|Evento|
            |campo_tipo_2|Justificativa|
            |campo_tipo_3|Ocorrência|
            |campo_tipo_4|Marcação|
            |campo_tipo_5|Horário|
            |campo_tipo_6|Data|
            |campo_tipo_7|Justificativa Edição de Ponto|
            |campo_tipo_8|Informações de Empresa|
            |campo_tipo_9|Informações de Funcionário|
            |campo_tipo_10|Fórmula|
            |definicao_campo_valor|Valor|
            |definicao_campo_codigo|Código|
            |definicao_campo_descricao|Descrição|
            |definicao_evento_ad|Adicional Noturno|
            |definicao_evento_atab|Atraso Abonado|
            |definicao_evento_at|Atrasos|
            |definicao_evento_dsdsr|Desconto de DSR|
            |definicao_evento_dt|Domingo Trabalhado|
            |definicao_evento_dsrab|DSR Abonado|
            |definicao_evento_ftab|Falta Abonada|
            |definicao_evento_ft|Faltas|
            |definicao_evento_fgtr|Folga Trabalhada|
            |definicao_evento_hrex100|Hora Extra 100%|
            |definicao_evento_hrex50|Hora Extra 50%|
            |definicao_evento_hrexn100|Hora Extra Noturna 100%|
            |definicao_evento_hrexn50|Hora Extra Noturna 50%|
            |definicao_evento_hrtr|Horas a Trabalhar|
            |definicao_evento_hrdsr|Horas DSR|
            |definicao_just_am|Atestado Médico|
            |definicao_just_aom|Atraso Ônibus/Metrô|
            |definicao_just_atftb|Atraso/Falta – Debitar BH|
            |definicao_just_hrexb|Hora Extra – Creditar BH|
            |definicao_just_sdsr|Saída a Serviço|
            |definicao_just_sdat|Saída Antecipada|
            |definicao_just_trcg|Trânsito Congestionado|
            |definicao_ocor_at|Atraso|
            |definicao_ocor_bchrc|Banco Horas Credito|
            |definicao_ocor_bchrd|Banco Horas Debito|
            |definicao_ocor_ft|Falta|
            |definicao_ocor_hrex|Hora Extra|
            |definicao_ocor_hrexadnot|Hora Extra Ad. Noturno|
            |definicao_ocor_hrtrs|Horas Trabalhadas|
            |definicao_ocor_incs|Inconsistência|
            |definicao_ocor_int11hr|Intervalo 11 Horas|
            |definicao_marc_au|Automático|
            |definicao_marc_ed|Editado|
            |definicao_marc_in|Indevido|
            |definicao_marc_or|Original|
            |definicao_marc_we|Web|
            |definicao_marc_mia|Marcações Importação Acesso|
            |definicao_marc_miapi|Marcações Integração API|
            |definicao_marc_mdesk|Marcações via Desktop|
            |definicao_marc_vo|Vinculado a obra|
            |definicao_marc_mb|Mobile|
            |definicao_marc_mbof|Mobile Offline|
            |definicao_info_empr_cod|Código|
            |definicao_info_empr_cei|CEI/CNO/CAEPF|
            |definicao_info_empr_razao|Razão Social|
            |definicao_info_empr_cnpj|CNPJ/CPF|
            |definicao_info_empr_ramo|Ramo de atividade|
            |definicao_info_empr_fuso|Fuso horário|
            |definicao_info_func_nomec|Nome Completo|
            |definicao_info_func_nomesoc|Nome Social|
            |definicao_info_func_mat|Matricula|
            |definicao_info_func_dtad|Data de Admissão|
            |definicao_info_func_dtdm|Data de Demissão|
            |definicao_info_func_crc|Crachá|
            |definicao_info_func_es|Estrutura|
            |definicao_info_func_gr|Grupo|
            |definicao_info_func_cg|Cargo|
            |definicao_info_func_hr|Horário|
            |definicao_info_func_cgsp|Carga Suplementar|
            |definicao_info_func_rgcl|Regra de Cálculo|
            |definicao_info_func_fd|Feriados|
            |definicao_info_func_bshr|Base de Horas|
            |definicao_info_func_vlhr|Valor da Hora|
            |definicao_info_func_lthral|Limite de horas de alocação|
            |definicao_info_func_tpfunc|Tipo funcionário|
            |definicao_info_func_cpalt1|Campo Alternativo 1|
            |definicao_info_func_cpalt2|Campo Alternativo 2|
            |definicao_info_func_cpalt3|Campo Alternativo 3|
            |definicao_info_func_cpext1|Extra 1|
            |definicao_info_func_cpext2|Extra 2|
            |definicao_info_func_cpext3|Extra 3|
            |definicao_info_func_cpext4|Extra 4|
            |definicao_info_func_cpext5|Extra 5|
            |definicao_info_func_cpext6|Extra 6|
            |definicao_info_func_cpext7|Extra 7|
            |definicao_info_func_cpext8|Extra 8|
            |definicao_info_func_cpext9|Extra 9|
            |definicao_info_func_cpext10|Extra 10|
            |definicao_info_func_pis|PIS|
            |definicao_info_func_cpf|CPF|
        Então deverá cadastrar o relatorio e informar "O Relatório Personalizado foi adicionado com sucesso"


    @br_relatorio_personalizado_create_valores
    Cenario: Criação de relatorio personalizado com os campos de valores
        Dado que preenche as colunas, insere somente o valor e insere o nome "Rel valor" no relatorio
            |campo_tipo_1|Evento|
            |campo_tipo_2|Justificativa|
            |campo_tipo_3|Ocorrência|
            |campo_tipo_4|Marcação|
            |campo_tipo_5|Horário|
            |campo_tipo_6|Data|
            |campo_tipo_7|Justificativa Edição de Ponto|
            |campo_tipo_8|Informações de Empresa|
            |campo_tipo_9|Informações de Funcionário|
            |campo_tipo_10|Fórmula|
            |definicao_campo_valor|Valor|
            |definicao_campo_codigo|Código|
            |definicao_campo_descricao|Descrição|
            |definicao_evento_ad|Adicional Noturno|
            |definicao_evento_atab|Atraso Abonado|
            |definicao_evento_at|Atrasos|
            |definicao_evento_dsdsr|Desconto de DSR|
            |definicao_evento_dt|Domingo Trabalhado|
            |definicao_evento_dsrab|DSR Abonado|
            |definicao_evento_ftab|Falta Abonada|
            |definicao_evento_ft|Faltas|
            |definicao_evento_fgtr|Folga Trabalhada|
            |definicao_evento_hrex100|Hora Extra 100%|
            |definicao_evento_hrex50|Hora Extra 50%|
            |definicao_evento_hrexn100|Hora Extra Noturna 100%|
            |definicao_evento_hrexn50|Hora Extra Noturna 50%|
            |definicao_evento_hrtr|Horas a Trabalhar|
            |definicao_evento_hrdsr|Horas DSR|
            |definicao_just_am|Atestado Médico|
            |definicao_just_aom|Atraso Ônibus/Metrô|
            |definicao_just_atftb|Atraso/Falta – Debitar BH|
            |definicao_just_hrexb|Hora Extra – Creditar BH|
            |definicao_just_sdsr|Saída a Serviço|
            |definicao_just_sdat|Saída Antecipada|
            |definicao_just_trcg|Trânsito Congestionado|
            |definicao_ocor_at|Atraso|
            |definicao_ocor_bchrc|Banco Horas Credito|
            |definicao_ocor_bchrd|Banco Horas Debito|
            |definicao_ocor_ft|Falta|
            |definicao_ocor_hrex|Hora Extra|
            |definicao_ocor_hrexadnot|Hora Extra Ad. Noturno|
            |definicao_ocor_hrtrs|Horas Trabalhadas|
            |definicao_ocor_incs|Inconsistência|
            |definicao_ocor_int11hr|Intervalo 11 Horas|
            |definicao_marc_au|Automático|
            |definicao_marc_ed|Editado|
            |definicao_marc_in|Indevido|
            |definicao_marc_or|Original|
            |definicao_marc_we|Web|
            |definicao_marc_mia|Marcações Importação Acesso|
            |definicao_marc_miapi|Marcações Integração API|
            |definicao_marc_mdesk|Marcações via Desktop|
            |definicao_marc_vo|Vinculado a obra|
            |definicao_marc_mb|Mobile|
            |definicao_marc_mbof|Mobile Offline|
            |definicao_info_empr_cod|Código|
            |definicao_info_empr_cei|CEI/CNO/CAEPF|
            |definicao_info_empr_razao|Razão Social|
            |definicao_info_empr_cnpj|CNPJ/CPF|
            |definicao_info_empr_ramo|Ramo de atividade|
            |definicao_info_empr_fuso|Fuso horário|
            |definicao_info_func_nomec|Nome Completo|
            |definicao_info_func_nomesoc|Nome Social|
            |definicao_info_func_mat|Matricula|
            |definicao_info_func_dtad|Data de Admissão|
            |definicao_info_func_dtdm|Data de Demissão|
            |definicao_info_func_crc|Crachá|
            |definicao_info_func_es|Estrutura|
            |definicao_info_func_gr|Grupo|
            |definicao_info_func_cg|Cargo|
            |definicao_info_func_hr|Horário|
            |definicao_info_func_cgsp|Carga Suplementar|
            |definicao_info_func_rgcl|Regra de Cálculo|
            |definicao_info_func_fd|Feriados|
            |definicao_info_func_bshr|Base de Horas|
            |definicao_info_func_vlhr|Valor da Hora|
            |definicao_info_func_lthral|Limite de horas de alocação|
            |definicao_info_func_tpfunc|Tipo funcionário|
            |definicao_info_func_cpalt1|Campo Alternativo 1|
            |definicao_info_func_cpalt2|Campo Alternativo 2|
            |definicao_info_func_cpalt3|Campo Alternativo 3|
            |definicao_info_func_cpext1|Extra 1|
            |definicao_info_func_cpext2|Extra 2|
            |definicao_info_func_cpext3|Extra 3|
            |definicao_info_func_cpext4|Extra 4|
            |definicao_info_func_cpext5|Extra 5|
            |definicao_info_func_cpext6|Extra 6|
            |definicao_info_func_cpext7|Extra 7|
            |definicao_info_func_cpext8|Extra 8|
            |definicao_info_func_cpext9|Extra 9|
            |definicao_info_func_cpext10|Extra 10|
            |definicao_info_func_pis|PIS|
            |definicao_info_func_cpf|CPF|
        Então deverá cadastrar o relatorio e informar "O Relatório Personalizado foi adicionado com sucesso"