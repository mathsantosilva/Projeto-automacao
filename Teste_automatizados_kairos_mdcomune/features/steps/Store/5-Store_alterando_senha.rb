Dado('realizo o login e vou até a tela de licença ativa') do
  find('a[style="font-weight: bold"]', text: 'Licenças').click
  find('a[href^="/store/License/Index/"]', text: 'Ativa').click
end

Quando('pesquiso a empresa e vou em ver usuarios') do
  @dados_empresa_cnpj = @common.consultar_empresa_criada_cnpj
  @dados_empresa_razao = @common.consultar_empresa_criada_razao
  fill_in 'Search', with: @dados_empresa_cnpj
  find('span[class="input-group-addon"]').click
  expect(find('table[class="table-bordered table-striped"] tbody tr td:nth-child(3)')).to have_content @dados_empresa_razao
  find('a[class="link"] span[class="glyphicon glyphicon-user"]').click
end

Quando('altero a senha do usuario e salvo') do |table|
  @dados_login = table.rows_hash
  @dados_empresa_email = @common.consultar_empresa_criada_email
  expect(find('tr td:nth-child(1)')).to have_content @dados_empresa_email
  find('span[class="glyphicon glyphicon-pencil"]').click
  fill_in 'Password', with: @dados_login[:senha]
  fill_in 'PasswordCheck', with: @dados_login[:senha]
  find('input[class="btn btn-success"]').click
end

Quando('vou até o kairos e redefino a senha') do |table|
  @dados_senhas = table.rows_hash
  visit current_host
  @login.logar(@dados_empresa_email, @dados_senhas[:senha_antiga])
  fill_in 'Password', with: @dados_senhas[:senha_antiga]
  fill_in 'NewPassword', with: @dados_senhas[:senha_nova]
  fill_in 'RepeatNewPassword', with: @dados_senhas[:senha_nova]
  find('input[class="Pointer submitLogin"]').click
  expect(find('div[class="validation-summary-ok"]')).to have_content @dados_senhas[:mensagem]
  find('a[href="/Dimep/Account/LogOn"]').click
end

Então('deverá conseguir logar na empresa com sucesso e apresentar a mensagem {string}') do |message|
  @login.logar(@dados_empresa_email, @dados_senhas[:senha_nova])
  expect(find('div[class="LateralFilterStyle"]')).to have_content message
end
