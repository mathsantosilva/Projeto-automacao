Então('vou até a tela de filial e acesso a criação de Filiais para validar a persistencia dos dados') do
  @common.nav_def('Empresa','Filiais', 'label[class="DefinitionsTitle"]')
  # Carrega as variaveis utilizadas nas spec
  @complements.geradores_dados_numericos_aleatorios
  @complements.geradores_tempo
  @complements.geradores_dados_documentos_empresa
  @complements.geradores_dados_endereco
  @complements.geradores_dados_internet
  @complements.geradores_dados_telefonia
end

Dado('que preencho os dados utilizando um codigo já existente em outra filial e clico em salvar') do
  @consultores.consulta_guarda_filial("Update filial CNPJ") 
  find('span[class="PlusButton"]').click
  fill_in 'Filial_Codigo', with: ""
  fill_in 'Filial_Codigo', with: $codigo_filial
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: $telefone
  fill_in 'Filial_Descricao', with: 'Automação de testes - Validação persistencia de dados - ' << $time.to_s
  fill_in 'Filial_CnpjCpf', with: $cnpj
  fill_in 'Filial_Endereco', with: $endereco_aleatorio
  fill_in 'Filial_Bairro', with: $bairro_aleatorio
  fill_in 'Filial_Cidade', with: $cidade_aleatoria
  fill_in 'Filial_UF', with: $estado_aleatorio
  fill_in 'Filial_Pais', with: $pais_aleatorio
  fill_in 'Filial_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
  fill_in 'Filial_Email', with: $email_aleatorio
  select('UTC - 12', from: 'Filial_FusoHorario_Id').select_option
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Filial_InicioHorarioVerao', with: '10032021'
  fill_in 'Filial_FimHorarioVerao', with: '10052021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10052021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '10072021'
  fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria
  @common.botao_salvar_geral
end

Então('devera apresentar a mensagem do codigo da filial {string}') do |message_failure|
  expect(find('div[class="field-validation-error"]')).to have_content message_failure
end

Dado('que preencho os dados utilizando uma razão social já existente em outra filial e clico em salvar') do
  @consultores.consulta_guarda_filial("Update filial CNPJ") 
  find('span[class="PlusButton"]').click                               
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: $telefone
  fill_in 'Filial_Descricao', with: $razao_filial
  fill_in 'Filial_CnpjCpf', with: $cnpj
  fill_in 'Filial_Endereco', with: $endereco_aleatorio
  fill_in 'Filial_Bairro', with: $bairro_aleatorio
  fill_in 'Filial_Cidade', with: $cidade_aleatoria
  fill_in 'Filial_UF', with: $estado_aleatorio
  fill_in 'Filial_Pais', with: $pais_aleatorio
  fill_in 'Filial_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
  fill_in 'Filial_Email', with: $email_aleatorio
  select('UTC - 12', from: 'Filial_FusoHorario_Id').select_option
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Filial_InicioHorarioVerao', with: '10032021'
  fill_in 'Filial_FimHorarioVerao', with: '10052021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10052021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '10072021'
  fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria 
  @common.botao_salvar_geral 
end

Então('devera apresentar a mensagem da razão social da filial {string}') do |message_failure|
  expect(find('div[class="field-validation-error"]')).to have_content message_failure
end

Dado('que preencho os dados utilizando um CNPJ já existente em outra filial e clico em salvar') do
  @consultores.consulta_guarda_filial("Update filial CNPJ") 
  find('span[class="PlusButton"]').click                               
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: $telefone
  fill_in 'Filial_Descricao', with: 'Automação de testes - Validação persistencia de dados - ' << $time.to_s
  find('label[for="rdCnpj"]').click
  fill_in 'Filial_CnpjCpf', with: $cnpjcpf_filial
  fill_in 'Filial_Endereco', with: $endereco_aleatorio
  fill_in 'Filial_Bairro', with: $bairro_aleatorio
  fill_in 'Filial_Cidade', with: $cidade_aleatoria
  fill_in 'Filial_UF', with: $estado_aleatorio
  fill_in 'Filial_Pais', with: $pais_aleatorio
  fill_in 'Filial_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
  fill_in 'Filial_Email', with: $email_aleatorio
  select('UTC - 12', from: 'Filial_FusoHorario_Id').select_option
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Filial_InicioHorarioVerao', with: '10032021'
  fill_in 'Filial_FimHorarioVerao', with: '10052021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10052021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '10072021'
  fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria 
  @common.botao_salvar_geral 
end

Então('devera apresentar a mensagem do CNPJ da filial {string}') do |message_failure|
  expect(find('div[class="field-validation-error"]')).to have_content message_failure
end

Dado('que preencho os dados utilizando uma CPF já existente em outra filial e clico em salvar') do
  @consultores.consulta_guarda_filial("Update filial CPF") 
  find('span[class="PlusButton"]').click                               
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: $telefone
  fill_in 'Filial_Descricao', with: 'Automação de testes - Validação persistencia de dados - ' << $time.to_s
  find('label[for="rdCpf"]').click
  fill_in 'Filial_CnpjCpf', with: $cnpjcpf_filial
  fill_in 'Filial_Endereco', with: $endereco_aleatorio
  fill_in 'Filial_Bairro', with: $bairro_aleatorio
  fill_in 'Filial_Cidade', with: $cidade_aleatoria
  fill_in 'Filial_UF', with: $estado_aleatorio
  fill_in 'Filial_Pais', with: $pais_aleatorio
  fill_in 'Filial_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
  fill_in 'Filial_Email', with: $email_aleatorio
  select('UTC - 12', from: 'Filial_FusoHorario_Id').select_option
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Filial_InicioHorarioVerao', with: '10032021'
  fill_in 'Filial_FimHorarioVerao', with: '10052021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10052021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '10072021'
  fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria 
  @common.botao_salvar_geral 
end

Então('devera apresentar a mensagem do CPF da filial {string}') do |message_failure|
  expect(find('div[class="field-validation-error"]')).to have_content message_failure
end