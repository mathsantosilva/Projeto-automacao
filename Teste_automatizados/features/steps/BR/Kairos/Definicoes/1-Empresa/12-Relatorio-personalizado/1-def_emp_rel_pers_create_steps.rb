Dado('que realizo o login pela tela de login em {string} no ambiente BR') do |path_site|
  visit path_site
  # Realiza login
  @login.logon_ambiente_geral
  @common.fechar_popup
  @complements.geradores_tempo
  @complements.geradores_dados_numericos_aleatorios

end

Então('faço o caminho até a tela cadastro de relatorio personalizado') do
  # Acessando a empresa pela navegacao de telas
  @common.nav_def('Empresa','Relatórios Personalizado', 'label[class="pointer"]')
  # Carrega as variaveis utilizadas nas spec
  
     
end

Dado('que preenche as colunas, insere todos os campos e insere o nome {string} no relatorio') do |nome_relatorio, table|
  names = table.rows_hash
  fill_in 'Codigo', with: $codigo_aleatorio_10
  fill_in 'Descricao', with: nome_relatorio + ' - ' << $time.to_s
  contador_linhas = 0

  # Coluna 1 - evento adicional noturno
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_ad", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  puts contador_linhas
  # Coluna 2 - evento Atraso Abonado
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_atab", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 - evento Atraso 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_at", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 - evento Desconto de DSR 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_dsdsr", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 - evento Domingo Trabalhado 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_dt", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 - evento DSR Abonado 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_dsrab", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 7 - evento Falta Abonada 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_ftab", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 8 - evento Faltas 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_ft", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 9 - evento Folga Trabalhada 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_fgtr", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 10 - evento Hora Extra 100% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrex100", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 11 - evento Hora Extra 50% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrex50", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 12 - evento Hora Extra Noturna 100% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrexn100", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 13 - evento Hora Extra Noturna 50% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrexn50", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 14 - evento Horas a Trabalhar
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrtr", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 15 - evento Horas DSR
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrdsr", "campo_tipo_1", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Justificativa Atestado Médico
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_am", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 - Justificativa Atraso Ônibus/Metrô
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_aom", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 - Justificativa Atraso/Falta – Debitar BH 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_atftb", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 - Justificativa Hora Extra – Creditar BH 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_hrexb", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 - Justificativa Saída a Serviço
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_sdsr", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 - Justificativa Saída Antecipada 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_sdat", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 7 - Justificativa Trânsito Congestionado 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_trcg", "campo_tipo_2", true)
  @common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Ocorrencia Atraso
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_at", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 - Ocorrencia Banco Horas Credito
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_bchrc", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 - Ocorrencia Banco Horas Debito
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_bchrd", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 - Ocorrencia Falta
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_ft", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 - Ocorrencia Hora Extra
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_hrex", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 - Ocorrencia Hora Extra Ad. Noturno
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_hrexadnot", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 7 - Ocorrencia Horas Trabalhadas
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_hrtrs", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 8 - Ocorrencia Inconsistência
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_incs", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 9 - Ocorrencia Intervalo 11 Horas 
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_int11hr", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 1 - Marcação Automático
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_au", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 2 - Marcação Editado
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_ed", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 3 - Marcação Indevido
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_in", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 4 - Marcação Original
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_or", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 5 - Marcação Web
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_we", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 6 - Marcação Marcações Integração API
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mia", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 7 - Marcação Marcações Integração API
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_miapi", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 8 - Marcação Marcações via Desktop
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mdesk", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 9 - Marcação Vinculado a obra
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_vo", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 10 - Marcação Mobile 
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mb", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 11 - Marcação Mobile Offline
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mbof", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Horario
  @common.inserir_colunas(contador_linhas, names,  "campo_tipo_5", "campo_tipo_5", false)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Horario
  @common.inserir_colunas(contador_linhas, names,  "campo_tipo_6", "campo_tipo_6", false)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Info Empresa Código
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_cod", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 -  Info Empresa CEI/CNO/CAEPF 
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_cei", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 -  Info Empresa Razão Social
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_razao", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 -  Info Empresa CNPJ/CPF
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_cnpj", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 -  Info Empresa Ramo de atividade
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_ramo", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 -  Info Empresa Fuso horário
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_fuso", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 -  Info funcionario Nome Completo
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_nomec", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 -  Info funcionario Nome Social
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_nomesoc", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 -  Info funcionario Matricula
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_mat", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 -  Info funcionario Data de Admissão
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_dtad", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 -  Info funcionario Data de Demissão
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_dtdm", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 6 -  Info funcionario Crachá    
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_crc", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 7 -  Info funcionario Estrutura 
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_es", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 8 -  Info funcionario Grupo     
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_gr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 9 -  Info funcionario Cargo     
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cg", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 10 -  Info funcionario Horário   
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_hr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 11 -  Info funcionario Carga Suplementar
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cgsp", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 12 -  Info funcionario Regra de Cálculo
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_rgcl", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 13 -  Info funcionario Feriados
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_fd", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 14 -  Info funcionario Base de Horas
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_bshr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 15 -  Info funcionario Valor da Hora
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_vlhr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 16 -  Info funcionario Limite de horas de alocação
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_lthral", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 17 -  Info funcionario Tipo funcionário
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_tpfunc", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 18 -  Info funcionario Campo Alternativo 1
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpalt1", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 19 -  Info funcionario Campo Alternativo 2
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpalt2", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 20 -  Info funcionario Campo Alternativo 3
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpalt3", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 21 -  Info funcionario Extra 1
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext1", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 22 -  Info funcionario Extra 2
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext2", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 23 -  Info funcionario Extra 3
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext3", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 24 -  Info funcionario Extra 4
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext4", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 25 -  Info funcionario Extra 5
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext5", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 26 -  Info funcionario Extra 6
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext6", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 27 -  Info funcionario Extra 7
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext7", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 28 -  Info funcionario Extra 8
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext8", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 29 -  Info funcionario Extra 9
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext9", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 30 -  Info funcionario Extra 10
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext10", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 31 -  Info funcionario PIS
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_pis", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 32 -  Info funcionario CPF
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpf", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)

  # Filtros
  find('div[class="checkboxCustom"]  label[for="ModoTotal1"]').click
  @common.botao_salvar_geral
  @validadores.validar_permanencia_pagina('/Dimep/RelatoriosPersonalizado/Create')
  
end

Dado('que preenche as colunas, insere somente o valor e insere o nome {string} no relatorio') do |nome_relatorio, table|
  names = table.rows_hash
  fill_in 'Codigo', with: $codigo_aleatorio
  fill_in 'Descricao', with: nome_relatorio + ' - ' << $time.to_s
  contador_linhas = 0
  
  # Coluna 1 - evento adicional noturno
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_ad", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  puts contador_linhas
  # Coluna 2 - evento Atraso Abonado
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_atab", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 - evento Atraso 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_at", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 - evento Desconto de DSR 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_dsdsr", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 - evento Domingo Trabalhado 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_dt", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 - evento DSR Abonado 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_dsrab", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 7 - evento Falta Abonada 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_ftab", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 8 - evento Faltas 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_ft", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 9 - evento Folga Trabalhada 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_fgtr", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 10 - evento Hora Extra 100% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrex100", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 11 - evento Hora Extra 50% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrex50", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 12 - evento Hora Extra Noturna 100% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrexn100", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 13 - evento Hora Extra Noturna 50% 
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrexn50", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 14 - evento Horas a Trabalhar
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrtr", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 15 - evento Horas DSR
  @common.inserir_colunas(contador_linhas, names,  "definicao_evento_hrdsr", "campo_tipo_1", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Justificativa Atestado Médico
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_am", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 - Justificativa Atraso Ônibus/Metrô
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_aom", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 - Justificativa Atraso/Falta – Debitar BH 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_atftb", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 - Justificativa Hora Extra – Creditar BH 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_hrexb", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 - Justificativa Saída a Serviço
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_sdsr", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 - Justificativa Saída Antecipada 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_sdat", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 7 - Justificativa Trânsito Congestionado 
  @common.inserir_colunas(contador_linhas, names,  "definicao_just_trcg", "campo_tipo_2", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Ocorrencia Atraso
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_at", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 - Ocorrencia Banco Horas Credito
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_bchrc", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 - Ocorrencia Banco Horas Debito
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_bchrd", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 - Ocorrencia Falta
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_ft", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 - Ocorrencia Hora Extra
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_hrex", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 - Ocorrencia Hora Extra Ad. Noturno
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_hrexadnot", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 7 - Ocorrencia Horas Trabalhadas
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_hrtrs", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 8 - Ocorrencia Inconsistência
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_incs", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 9 - Ocorrencia Intervalo 11 Horas 
  @common.inserir_colunas(contador_linhas, names,  "definicao_ocor_int11hr", "campo_tipo_3", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 1 - Marcação Automático
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_au", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 2 - Marcação Editado
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_ed", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 3 - Marcação Indevido
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_in", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 4 - Marcação Original
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_or", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 5 - Marcação Web
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_we", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 6 - Marcação Marcações Integração API
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mia", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 7 - Marcação Marcações Integração API
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_miapi", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 8 - Marcação Marcações via Desktop
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mdesk", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 9 - Marcação Vinculado a obra
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_vo", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 10 - Marcação Mobile 
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mb", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # # Coluna 11 - Marcação Mobile Offline
  # @common.inserir_colunas(contador_linhas, names,  "definicao_marc_mbof", "campo_tipo_4", true)
  # contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Horario
  @common.inserir_colunas(contador_linhas, names,  "campo_tipo_5", "campo_tipo_5", false)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Horario
  @common.inserir_colunas(contador_linhas, names,  "campo_tipo_6", "campo_tipo_6", false)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 - Info Empresa Código
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_cod", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 -  Info Empresa CEI/CNO/CAEPF 
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_cei", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 -  Info Empresa Razão Social
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_razao", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 -  Info Empresa CNPJ/CPF
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_cnpj", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 -  Info Empresa Ramo de atividade
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_ramo", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 6 -  Info Empresa Fuso horário
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_empr_fuso", "campo_tipo_8", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 1 -  Info funcionario Nome Completo
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_nomec", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 2 -  Info funcionario Nome Social
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_nomesoc", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 3 -  Info funcionario Matricula
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_mat", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 4 -  Info funcionario Data de Admissão
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_dtad", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 5 -  Info funcionario Data de Demissão
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_dtdm", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 6 -  Info funcionario Crachá    
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_crc", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 7 -  Info funcionario Estrutura 
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_es", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 8 -  Info funcionario Grupo     
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_gr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 9 -  Info funcionario Cargo     
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cg", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
          
  # Coluna 10 -  Info funcionario Horário   
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_hr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 11 -  Info funcionario Carga Suplementar
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cgsp", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 12 -  Info funcionario Regra de Cálculo
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_rgcl", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 13 -  Info funcionario Feriados
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_fd", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 14 -  Info funcionario Base de Horas
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_bshr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 15 -  Info funcionario Valor da Hora
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_vlhr", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 16 -  Info funcionario Limite de horas de alocação
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_lthral", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 17 -  Info funcionario Tipo funcionário
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_tpfunc", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 18 -  Info funcionario Campo Alternativo 1
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpalt1", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 19 -  Info funcionario Campo Alternativo 2
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpalt2", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 20 -  Info funcionario Campo Alternativo 3
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpalt3", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 21 -  Info funcionario Extra 1
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext1", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 22 -  Info funcionario Extra 2
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext2", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 23 -  Info funcionario Extra 3
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext3", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 24 -  Info funcionario Extra 4
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext4", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 25 -  Info funcionario Extra 5
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext5", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 26 -  Info funcionario Extra 6
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext6", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 27 -  Info funcionario Extra 7
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext7", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 28 -  Info funcionario Extra 8
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext8", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 29 -  Info funcionario Extra 9
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext9", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 30 -  Info funcionario Extra 10
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpext10", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 31 -  Info funcionario PIS
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_pis", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)
  
  # Coluna 32 -  Info funcionario CPF
  @common.inserir_colunas(contador_linhas, names,  "definicao_info_func_cpf", "campo_tipo_9", true)
  contador_linhas = @common.contador_incre(contador_linhas)

  # Filtros
  find('div[class="checkboxCustom"]  label[for="ModoTotal1"]').click
  @common.botao_salvar_geral
  @validadores.validar_permanencia_pagina('/Dimep/RelatoriosPersonalizado/Create')
end

Então('deverá cadastrar o relatorio e informar {string}') do |message_success|
  expect(find('div[id=Summary-Field-Index]')).to have_content message_success
end