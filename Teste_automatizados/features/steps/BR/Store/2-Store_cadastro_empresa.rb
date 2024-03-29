Dado('que acesso a store {string} e vou até a tela de cadastro') do |path_site|
  visit path_site
  @common.inserir_cookie_sessao()
  find('a[style="font-weight: bold"]', text: 'Empresas').click
  find('a[href="/store/Entity/Index"]', text: 'Gestión de Empresas').click
  find('a[class="btn btn-success"]', text: 'Registro Empresa').click
end

Quando('Preencho os dados necessarios utilizando RFC') do |table|
  cadastro = table.rows_hash
  @razao_social = 'Empresa de testes - Automação - ' + $time.to_s
  fill_in 'EntityData_Name', with: @razao_social
  fill_in 'RFC', with: $rfc
  @email_gerado = 'teste' + $codigo_aleatorio.to_s + '@dimep.com.br'
  fill_in 'EntityData_Email', with: @email_gerado
  fill_in 'EntityData_Phone', with: $codigo_area + $telefone
  # fill_in 'EntityData_Cei', with: '268881103681'
  find('div[id="PlanSelected_chosen"]').click
  find('div[id="PlanSelected_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input').set cadastro[:plano]
  find('li[class$="highlighted"]', text: cadastro[:plano]).click
  find('div[id="EntityData_RamoCodigo_chosen"]').click
  find('div[id="EntityData_RamoCodigo_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input').set cadastro[:ramo]
  find('li[class$="highlighted"]', text: cadastro[:ramo]).click
  fill_in 'EntityData_Address', with: $endereco_aleatorio
  fill_in 'EntityData_District', with: 'Centro'
  fill_in 'EntityData_Cep', with: $cep
  fill_in 'EntityData_Uf', with: $estado_aleatorio
  fill_in 'EntityData_City', with: $cidade_aleatoria
  select('México', from: 'BusinessRuleSelected', visible: false).select_option
  fill_in 'EntityData_Url', with: $site
  #find('label[id="lblPortaria"]').click
  fill_in 'UserData_Name', with: $nome
  fill_in 'UserData_Email', with: @email_gerado
  fill_in 'UserData_Phone', with: $telefone
  #fill_in 'UserData_Cpf', with: $cpf
  find('div[id="LanguageSelected_chosen"]').click
  find('div[id="LanguageSelected_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input').set cadastro[:idioma]
  find('li[class$="highlighted"]', text: cadastro[:idioma]).click
  find('div[id="DivTerms"] input').click
  find('button[id="btnRegistrar"]').click
  expect(find('div[class="jquery-loading-modal__text"]')).to have_content cadastro[:mensagem]
  @common.validar_troca_pagina('/store/Entity/CreateResult')
end

# Quando('Preencho os dados necessarios utilizando CPF e o plano {string}') do |plano|
#   @razao_social = 'Empresa de testes - Automação - ' + $time.to_s
#   fill_in 'EntityData_Name', with: @razao_social
#   fill_in 'RFC', with: $cript_md5
#   @email_gerado = 'teste' + $codigo_aleatorio.to_s + '@dimep.com.br'
#   fill_in 'EntityData_Email', with: @email_gerado
#   fill_in 'EntityData_Phone', with: $codigo_area + $telefone
#   fill_in 'EntityData_Cei', with: '268881103681'
#   find('div[id="PlanSelected_chosen"]').click
#   find('div[id="PlanSelected_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input').set plano
#   find('li[class$="highlighted"]', text: plano).click
#   find('div[id="EntityData_RamoCodigo_chosen"]').click
#   find('div[id="EntityData_RamoCodigo_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input').set 'Indústrias De Transformação'
#   find('li[class$="highlighted"]', text: 'Industrias Metalicas Basicas').click
#   fill_in 'EntityData_Address', with: $endereco_aleatorio
#   fill_in 'EntityData_District', with: 'Centro'
#   fill_in 'EntityData_Cep', with: $cep
#   fill_in 'EntityData_Uf', with: $estado_aleatorio
#   fill_in 'EntityData_City', with: $cidade_aleatoria
#   select('Brasil', from: 'BusinessRuleSelected', visible: false).select_option
#   fill_in 'EntityData_Url', with: $site
#   find('label[id="lblPortaria"]').click
#   fill_in 'UserData_Name', with: $nome
#   fill_in 'UserData_Email', with: @email_gerado
#   fill_in 'UserData_Phone', with: $telefone
#   fill_in 'UserData_Cpf', with: $cpf
#   find('div[id="LanguageSelected_chosen"]').click
#   find('div[id="LanguageSelected_chosen"] div[class="chosen-drop"] div[class="chosen-search"] input').set 'Português BR'
#   find('li[class$="highlighted"]', text: 'Español').click
#   # sleep 50
#   find('button[id="btnRegistrar"]').click
#   expect(find('div[class="jquery-loading-modal__text"]')).to have_content 'Aguarde enquanto o cadastro é realizado'
#   @common.validar_troca_pagina('/store/Entity/CreateResult')
# end

Então('deverá informar a mensagem de {string}') do |message_sucess|
  @common.gravar_arquivo_dados_empresa(@email_gerado, $cnpj, @razao_social)
  expect(find('div[class="panel-body"] div h2')).to have_content message_sucess
  expect(find('div[style="display: inline-block; width: 100%; margin-bottom: 20px; padding-right: 2%;"]')).to have_content @email_gerado
end
