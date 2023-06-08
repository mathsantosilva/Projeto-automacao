Dado('que acesso a tela de login em {string} no ambiente mx') do |path|
  visit path
  # Realiza login
  @login.logon_ambiente_geral
  @login.fechar_popup
end

Então('faço o caminho até a tela cadastro de empresa') do
  # Acessando a empresa pela navegacao de telas
  @common.nav_def('Sociedad','Sociedads', 'label[class="pointer"]')
  # Carrega as variaveis utilizadas nas spec
  @complements.varcommon
  @complements.varcadastro
end

Dado('que preencho os dados, uso RFC e clico em salvar') do 
  # Entrando na criacao de empresa
  fill_in 'Empresa_Codigo', with: $codigo_aleatorio
  fill_in 'Empresa_Telefone', with: '116541954654'
  fill_in 'Empresa_RazaoSocial', with: 'Empresa Br - Automação de testes - ' << $time.to_s
  fill_in 'Empresa_CnpjCpf', with: $rfc
  select('EXTRACCION DE MINERALES METALIFEROS', from: 'Empresa_RamoAtividade_Id').select_option
  fill_in 'Empresa_Endereco', with: $endereco_aleatorio
  fill_in 'Empresa_Cidade', with: $cidade_aleatoria
  fill_in 'Empresa_Pais', with: $pais_aleatorio
  fill_in 'Empresa_URL', with: $url_aleatoria
  fill_in 'Empresa_Email', with: $email_aleatorio
  select('15', from: 'Empresa_NrMaxDigitosParaMatriculaDelEmpleado').select_option
  fill_in 'Empresa_AnoAperturaNomina', with: $data_ano_atual
  fill_in 'Empresa_DataAbertura', with: $data_inicio_ano
  select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Empresa_InicioHorarioVerao', with: $data_inicio_verao
  fill_in 'Empresa_FimHorarioVerao', with: $data_fim_verao
  fill_in 'Empresa_DataPrevisaoProximoFechamento', with: $data_fim_ano
  fill_in 'Empresa_DataLimiteTratamentoPonto', with: $data_fim_ano
  fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria
  @common.botaosalvar_geral
  @common.validar_permanencia_pagina('/Dimep/Empresas/Create')
end

Dado('que cadastro empresa RFC em loopings') do
  @cadastros.looping_empresas_mx
end

Então('deverá ser apresentado a mensagem {string}') do |message_success|
  expect(find('div[id=Summary-Field-Index]')).to have_content message_success
end