Dado 'Faço login no sistema de mx' do

    #Faço o login no sistema
    @login.logon_ambiente_mx

end

Quando 'Navego ate a tela de configurações de relogios de mx' do

    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuConfiguracoesRelogios"')

    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click

end

Quando 'Clico para salvar a configuração de mx' do

    find('label[for="radioModelo29"]').click

    #clicando para salvar
    @common.botaosalvar_config_relogio_mx()

end


Então 'Verifico os campos obrigatorios para cadastro da configuração de mx' do

    @obrigatorio.camp_obrig_config_relog_mx()

end



Quando 'Preencho os campos ultrapassando a quantidade permitida e clico para salvar de mx' do

    find('label[for="radioModelo29"]').click

    fill_in 'Codigo', with: '1111000'
    fill_in 'Descricao', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'

    @common.botaosalvar_config_relogio_mx()

end

Então 'Aguardo a mensagem de que o limite permitido na descrição é 50 de mx' do

    expect(find('div[class=field-validation-error]')).to have_content 'El número máximo de caracteres para la descripción es 50.'

end



Quando 'Preencho os campos com caracteres especiais e clico em salvar de mx' do

    find('label[for="radioModelo29"]').click

    fill_in 'Codigo', with: '1111000'
    fill_in 'Descricao', with: '"!@#$%¨&*()_we'

    @common.botaosalvar_config_relogio_mx()

end

Então 'Aguardo uma mensagem de sucesso na criação da configuração de mx {string}' do |message_sucess|

  #Mensagem de confirmação de cadastro de filial
  expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess

end