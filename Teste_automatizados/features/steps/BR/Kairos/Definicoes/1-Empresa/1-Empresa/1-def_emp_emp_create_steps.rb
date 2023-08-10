  Então('vou até a tela de empresas para cadastrar uma nova empresa') do
    # Acessando a empresa pela navegacao de telas
    @common.nav_def('Empresa','Empresas', 'label[class="pointer"]')
    
    # Carrega as variaveis utilizadas nas spec
    @complements.geradores_dados_numericos_aleatorios
    @complements.geradores_tempo
    @complements.geradores_dados_documentos_empresa
    @complements.geradores_dados_endereco
    @complements.geradores_dados_internet
  end

  Dado('que preencho os dados, uso CNPJ e clico em salvar') do
    fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '116541954654'
    find('label[for="CbUtilizaPortaria"]', visible: true)
    fill_in 'Empresa_RazaoSocial', with: 'Empresa Br - Automação de testes - ' << $time.to_s
    find('label[for="rdCnpj"]').click
    fill_in 'Empresa_CnpjCpf', with: $cnpj
    select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: $url_aleatoria
    fill_in 'Empresa_Email', with: $email_aleatorio
    fill_in 'Empresa_DataAbertura', with: '01012021'
    select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria
    @common.botao_salvar_geral
    @validadores.validar_permanencia_pagina('/Dimep/Empresas/Create') 
  end

  Dado('que preencho os dados, uso CPF e clico em salvar') do
     fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '116541954654'
    find('label[for="CbUtilizaPortaria"]', visible: true)
    fill_in 'Empresa_RazaoSocial', with: $razao_social_aleatoria << ' ' << $time.to_s
    find('label[for="rdCpf"]').click
    fill_in 'Empresa_CnpjCpf', with: $cpf
    select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: $url_aleatoria
    fill_in 'Empresa_Email', with: $email_aleatorio
    fill_in 'Empresa_DataAbertura', with: '01012021'
    select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria
    @common.botao_salvar_geral
    @validadores.validar_permanencia_pagina('/Dimep/Empresas/Create')
  end

  Dado('que preencho os dados, uso CNPJ em looping') do
    @cadastro_empresa.looping_cadastro_empresa_cnpj_br
  end
  
  Dado('que preencho os dados, uso CPF em looping') do
    @cadastro_empresa.looping_cadastro_empresa_cpf_br
  end

  Então('deverá apresentar a mensagem de sucesso no cadastro da empresa {string}') do |message_success|
    expect(find('div[id=Summary-Field-Index]')).to have_content message_success
  end