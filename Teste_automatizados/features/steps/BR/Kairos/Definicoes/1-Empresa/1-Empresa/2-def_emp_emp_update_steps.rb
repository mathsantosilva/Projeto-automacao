Então('vou até a tela de empresas para alterar uma empresa existente') do                      
    # Acessando a empresa pela navegação de telas
    @common.nav_def('Empresa','Empresas','label[class="DefinitionsTitle"]')
    # Carrega as variaveis utilizadas nas spec
    @complements.varcommon
    @complements.varcadastro
    
end                                                                                            
                                                                                               
Dado('que altero os dados da empresa com CNPJ') do 
    @common.procurar_empresa_cnpj()      
    expect(find('input[id="Empresa_Codigo"]').readonly?).to be(true)
    fill_in 'Empresa_CEI', with: '242035439181'
    fill_in 'Empresa_Telefone', with: '119563245132155'
    expect(find('input[id="CbUtilizaPortaria"]', visible: false).checked?).to be(true)
    expect(find('input[id="CbUtilizaPortaria"]', visible: false).disabled?).to be(true)
    #expect(find('input[id="Empresa_RazaoSocial"]').readonly?).to be(true)
    expect(find('input[id="Empresa_CnpjCpf"]').readonly?).to be(true)
    drop_ramo = find('#Empresa_RamoAtividade_Id')
    drop_ramo.all('option').sample.select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: $url_aleatoria
    fill_in 'Empresa_Email', with: $email_aleatorio
    drop_fuso = find('#Empresa_FusoHorario_Id')
    drop_fuso.all('option').sample.select_option
    expect(find('input[id="checkHabilitaHorarioVerao"]', visible: false).checked?).to be(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10042021'
    fill_in 'Empresa_FimHorarioVerao', with: '10062021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10062021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10082021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria         
    @common.botao_salvar_geral
end                                                                                            
                                                                                               
Dado('que altero os dados da empresa com CPF') do   
    @common.procurar_empresa_cpf()                                           
    expect(find('input[id="Empresa_Codigo"]').readonly?).to be(true)
    fill_in 'Empresa_CEI', with: '242035439181'
    fill_in 'Empresa_Telefone', with: '119563245132155'
    expect(find('input[id="CbUtilizaPortaria"]', visible: false).checked?).to be(true)
    expect(find('input[id="CbUtilizaPortaria"]', visible: false).disabled?).to be(true)
    expect(find('input[id="Empresa_CnpjCpf"]').readonly?).to be(true)
    drop_ramo = find('#Empresa_RamoAtividade_Id')
    drop_ramo.all('option').sample.select_option
    fill_in 'Empresa_Endereco', with: $endereco_aleatorio
    fill_in 'Empresa_Bairro', with: $bairro_aleatorio
    fill_in 'Empresa_Cidade', with: $cidade_aleatoria
    fill_in 'Empresa_UF', with: $estado_aleatorio
    fill_in 'Empresa_Pais', with: $pais_aleatorio
    fill_in 'Empresa_URL', with: $url_aleatoria
    fill_in 'Empresa_Email', with: $email_aleatorio
    drop_fuso = find('#Empresa_FusoHorario_Id')
    drop_fuso.all('option').sample.select_option
    expect(find('input[id="checkHabilitaHorarioVerao"]', visible: false).checked?).to be(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10042021'
    fill_in 'Empresa_FimHorarioVerao', with: '10062021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10062021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10082021'
    fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria  
    @common.botao_salvar_geral               
end                                                                                            
     
Então('deverá apresentar a mensagem de sucesso na alteração da empresa {string}') do |message_success|  
    expect(find('div[id=Summary-Field-Index]')).to have_content message_success                
end 