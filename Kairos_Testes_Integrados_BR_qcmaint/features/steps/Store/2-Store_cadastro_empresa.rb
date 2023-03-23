Dado('que acesso a tela de cadastro de empresa') do                            
  find('a[style="font-weight: bold"]', text: 'Empresas').click
  find('a[href="/store/Entity/Index"]', text: 'Gestão de Empresas').click
  find('a[class="btn btn-success"]', text: 'Cadastrar Empresa').click
end                                                                            
                                                                               
Quando('Preencho os dados necessarios utilizando CNPJ') do  
  @razao_social =  'Empresa de testes - Automação - ' << $time.to_s                  
  fill_in 'EntityData_Name', with: @razao_social
  fill_in 'EntityData_CnpjCpf', with: $cnpj
  @email_gerado = 'teste' << $codigo_aleatorio.to_s << '@dimep.com.br'
  fill_in 'EntityData_Email', with: @email_gerado
  fill_in 'EntityData_Phone', with: $codigo_area << $telefone
  fill_in 'EntityData_Cei', with: '268881103681'
  find('div[id="PlanSelected_chosen"]').click
  find('div[id="PlanSelected_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input[class="chosen-search-input"]').set 'PLANO BASE DE TESTE'
  find('li[class="active-result highlighted"]', text: 'PLANO BASE DE TESTE').click
  find('div[id="EntityData_RamoCodigo_chosen"]').click
  find('div[id="EntityData_RamoCodigo_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input[class="chosen-search-input"]').set 'Indústrias De Transformação'
  find('li[class="active-result highlighted"]', text: 'Indústrias De Transformação').click
  fill_in 'EntityData_Address', with: $endereco_aleatorio
  fill_in 'EntityData_District', with: 'Centro'
  fill_in 'EntityData_Cep', with: $cep
  fill_in 'EntityData_Uf', with: $estado_aleatorio
  fill_in 'EntityData_City', with: $cidade_aleatoria
  select('Brasil', from: 'BusinessRuleSelected', visible: false).select_option
  fill_in 'EntityData_Url', with: $site
  find('label[id="lblPortaria"]').click
  fill_in 'UserData_Name', with: $nome
  fill_in 'UserData_Email', with: @email_gerado
  fill_in 'UserData_Phone', with: $telefone
  fill_in 'UserData_Cpf', with: $cpf 
  find('div[id="LanguageSelected_chosen"]').click
  find('div[id="LanguageSelected_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input[class="chosen-search-input"]').set 'Português BR'
  find('li[class="active-result result-selected highlighted"]', text: 'Português BR').click
  #sleep 50
  find('button[id="btnRegistrar"]').click
  expect(find('div[class="jquery-loading-modal__text"]')).to have_content 'Aguarde enquanto o cadastro é realizado'
  @common.validar_troca_pagina('/store/Entity/CreateResult')
end

Quando('Preencho os dados necessarios utilizando CPF') do
  pending # Write code here that turns the phrase above into concrete actions
end
                                                                               
Então('deverá informar a mensagem de {string}') do |message_sucess|                    
  @common.gravar_arquivo_dados_empresa(@email_gerado, $cnpj,@razao_social)
  expect(find('h2', text: 'Empresa e usuário cadastrados com sucesso')).to have_text message_sucess
  expect(find('div[style="display: inline-block; width: 100%; margin-bottom: 20px; padding-right: 2%;"]' )).to have_content @email_gerado
end                                                                            
                                                                               