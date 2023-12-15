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
  campos = table.rows_hash
  fill_in 'Codigo', with: $codigo_aleatorio_10
  fill_in 'Descricao', with: nome_relatorio + ' - ' << $time.to_s
  find('label[for="TotaisPorPessoa"]').click
  # Metodo passa por todos os campos
  @common.inserir_colunas(campos, true)
  #@common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])

  # Rodape
  find('div[class="checkboxCustom"]  label[for="ModoTotal1"]').click
  @common.botao_salvar_geral
  @validadores.validar_permanencia_pagina('/Dimep/RelatoriosPersonalizado/Create')
  
end

Dado('que preenche as colunas, insere somente o valor e insere o nome {string} no relatorio') do |nome_relatorio, table|
  campos = table.rows_hash
  fill_in 'Codigo', with: $codigo_aleatorio_10
  fill_in 'Descricao', with: nome_relatorio + ' - ' << $time.to_s
  find('label[for="TotaisPorPessoa"]').click
  # Metodo passa por todos os campos
  @common.inserir_colunas(campos, false)
  #@common.selecionar_opcoes(contador_linhas, names, ['definicao_campo_codigo', 'definicao_campo_descricao', 'definicao_campo_valor'])
  
  # Rodape
  find('div[class="checkboxCustom"]  label[for="ModoTotal1"]').click
  @common.botao_salvar_geral
  @validadores.validar_permanencia_pagina('/Dimep/RelatoriosPersonalizado/Create')
end

Então('deverá cadastrar o relatorio e informar {string}') do |message_success|
  expect(find('div[id=Summary-Field-Index]')).to have_content message_success
end