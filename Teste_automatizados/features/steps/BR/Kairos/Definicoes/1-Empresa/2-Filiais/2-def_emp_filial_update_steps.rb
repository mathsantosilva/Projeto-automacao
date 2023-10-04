Então('vou até a tela de filiais para alterar uma filial existente') do                             
    # Acessando a empresa pela navegação de telas
    @common.nav_def('Empresa','Filiais','label.DefinitionsTitle')
    
    # Carrega as variaveis utilizadas nas spec
    @complements.geradores_dados_numericos_aleatorios
    @complements.geradores_tempo
    @complements.geradores_dados_documentos_empresa
    @complements.geradores_dados_endereco
    @complements.geradores_dados_internet                     
end                                                                                                  
                                                                                                     
Dado('que altero os dados da filial com CNPJ') do 
  @consultores.consulta_acessa_filial('Criação filial CNPJ')
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: '999999999'
  fill_in 'Filial_Descricao', with: "Automação de testes + Update filial CNPJ + #{$time.to_s}"
  find('label[for="rdCnpj"]').click
  fill_in 'Filial_CnpjCpf', with: $cnpj
  fill_in 'Filial_Endereco', with: $endereco_aleatorio
  fill_in 'Filial_Cidade', with: $cidade_aleatoria
  fill_in 'Filial_Bairro', with: $bairro_aleatorio
  fill_in 'Filial_UF', with: $cidade_aleatoria
  fill_in 'Filial_Pais', with: $pais_aleatorio
  fill_in 'Filial_URL', with: $url_aleatoria
  fill_in 'Filial_Email', with: $email_aleatorio
  select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
  #find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  #fill_in 'Filial.InicioHorarioVerao', with: '10062021'
  #fill_in 'Filial_FimHorarioVerao', with: '11092021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '11032021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
  fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria
  @common.botao_salvar_geral
end                                                                                                  
                                                                                                     
Dado('que altero os dados da filial com CPF') do
  @consultores.consulta_acessa_filial('Criação filial CPF')
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: '999999999'
  fill_in 'Filial_Descricao', with: "#{$razao_social_aleatoria} + Update filial CPF + #{$time.to_s}"
  find('label[for="rdCpf"]').click
  fill_in 'Filial_CnpjCpf', with: $cpf
  fill_in 'Filial_Endereco', with: $endereco_aleatorio
  fill_in 'Filial_Cidade', with: $cidade_aleatoria
  fill_in 'Filial_Bairro', with: $bairro_aleatorio
  fill_in 'Filial_UF', with: $cidade_aleatoria
  fill_in 'Filial_Pais', with: $pais_aleatorio
  fill_in 'Filial_URL', with: $url_aleatoria
  fill_in 'Filial_Email', with: $email_aleatorio
  select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
  #find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  #fill_in 'Filial.InicioHorarioVerao', with: '10062021'
  #fill_in 'Filial_FimHorarioVerao', with: '11092021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '11032021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
  fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria
  @common.botao_salvar_geral
end                                                                                                  

Então('deverá apresentar a mensagem de sucesso na alteração da filial {string}') do |message_success|
  expect(find('div[id=Summary-Field-Index]')).to have_content message_success
end