Então('vou até a tela de empresa e acesso a criação de empresas para validar a persistencia dos dados') do                  
    @common.nav_def('Empresa','Empresas', 'label[class="DefinitionsTitle"]')
    # Carrega as variaveis utilizadas nas spec
    @complements.geradores_dados_numericos_aleatorios
    @complements.geradores_tempo
    @complements.geradores_dados_documentos_empresa
    @complements.geradores_dados_endereco
    @complements.geradores_dados_internet

  end                                                                                                                         
                                                                                                                              
  Dado('que preencho os dados utilizando um codigo já existente e clico em salvar') do   
    @consultores.consulta_guarda_dados_empresa_cnpj                                     
    find('span[class="PlusButton"]').click
    fill_in 'Empresa_Codigo', with: ""
    fill_in 'Empresa_Codigo', with: $codigo_filial
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '116541954654'
    find('label[for="CbUtilizaPortaria"]', visible: true)
    fill_in 'Empresa_RazaoSocial', with: 'Automação de testes - Validação persistencia de dados - ' << $time.to_s
    fill_in 'Empresa_CnpjCpf', with: $cnpj
    select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
    fill_in 'Empresa_Email', with: $email_aleatorio
    fill_in 'Empresa_DataAbertura', with: '10112020'
    select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria
    @common.botao_salvar_geral
  end                                                                                                                         
                                                                                                                              
  Então('devera apresentar a mensagem do codigo {string}') do |message_failure|                                                        
    expect(find('div[class="field-validation-error"]')).to have_content message_failure
  end                                                                                                                         
                                                                                                                              
  Dado('que preencho os dados utilizando uma razão social já existente e clico em salvar') do  
    @consultores.consulta_guarda_dados_empresa_cnpj                                     
    find('span[class="PlusButton"]').click                               
    fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '116541954654'
    find('label[for="CbUtilizaPortaria"]', visible: true)
    fill_in 'Empresa_RazaoSocial', with: $razao_filial
    fill_in 'Empresa_CnpjCpf', with: $cnpj
    select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
    fill_in 'Empresa_Email', with: $email_aleatorio
    fill_in 'Empresa_DataAbertura', with: '10112020'
    select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria 
    @common.botao_salvar_geral                                          
  end                                                                                                                         
                                                                                                                              
  Então('devera apresentar a mensagem da razão social {string}') do |message_failure|                                                  
    expect(find('div[class="field-validation-error"]')).to have_content message_failure
  end                                                                                                                         
                                                                                                                              
  Dado('que preencho os dados utilizando um CNPJ já existente e clico em salvar') do
    @consultores.consulta_guarda_dados_empresa_cnpj                                     
    find('span[class="PlusButton"]').click                                           
    fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '116541954654'
    find('label[for="CbUtilizaPortaria"]', visible: true)
    fill_in 'Empresa_RazaoSocial', with: 'Automação de testes - Validação persistencia de dados - ' << $time.to_s
    fill_in 'Empresa_CnpjCpf', with: $cnpj_Empresa
    select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
    fill_in 'Empresa_Email', with: $email_aleatorio
    fill_in 'Empresa_DataAbertura', with: '10112020'
    select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria   
    @common.botao_salvar_geral                                           
  end                                                                                                                         
                                                                                                                              
  Então('devera apresentar a mensagem do CNPJ {string}') do |message_failure|                                                          
    expect(find('div[class="field-validation-error"]')).to have_content message_failure
  end                                                                                                                         
                                                                                                                              
  Dado('que preencho os dados utilizando uma CPF já existente e clico em salvar') do
    @consultores.consulta_guarda_dados_empresa_cpf                                   
    find('span[class="PlusButton"]').click                                           
    fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '116541954654'
    find('label[for="CbUtilizaPortaria"]', visible: true)
    fill_in 'Empresa_RazaoSocial', with: 'Automação de testes - Validação persistencia de dados - ' << $time.to_s
    fill_in 'Empresa_CnpjCpf', with: $cpf_Empresa
    select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: 'https://www.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'
    fill_in 'Empresa_Email', with: $email_aleatorio
    fill_in 'Empresa_DataAbertura', with: '10112020'
    select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria
    @common.botao_salvar_geral                                               
  end                                                                                                                         
                                                                                                                              
  Então('devera apresentar a mensagem do CPF {string}') do |message_failure|                                                           
    expect(find('div[class="field-validation-error"]')).to have_content message_failure
  end                                                                                                                         
                                                                                                                              