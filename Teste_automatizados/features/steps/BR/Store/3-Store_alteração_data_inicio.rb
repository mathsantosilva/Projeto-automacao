Dado('acesso a tela de gestão da empresa') do
  visit 
  find('a[style="font-weight: bold"]', text: 'Empresas').click
  find('a[href="/store/Entity/Index"]', text: 'Gestão de Empresas').click
end

Quando('Pesquiso a empresa e edito as configurações') do
  @dados_empresa_cnpj = @common.consultar_empresa_criada_cnpj
  @dados_empresa_email = @common.consultar_empresa_criada_email
  fill_in 'Search', with: @dados_empresa_cnpj
  find('span[class="input-group-addon"]').click
  expect(find('table[class="table-bordered table-striped"] tbody tr td:nth-child(2)')).to have_content @dados_empresa_email
  find('td[style="text-align: left;"] a:nth-child(2)').click
  sleep 20
end

Quando('Altero a data inicial da empresa e salvo') do
  find('div[class="editor-field input-group date"]').click
  fill_in 'AberturaPeriodo', with: $data_inicio_mes
  find('input[id="btnSalvar"]').click
  find('button[id="btnConfirm"]').click
end

Então('deverá apresentar a mensagem {string}') do |message_sucess|
  expect(find('[class="alert alert-success"] div div')).to have_content message_sucess
end