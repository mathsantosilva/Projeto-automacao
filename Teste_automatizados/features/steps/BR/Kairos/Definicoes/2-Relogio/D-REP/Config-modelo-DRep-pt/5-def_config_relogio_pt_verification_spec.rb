Dado 'Faço login no sistema de pt' do

    #Faço o login no sistema
    @login.logon_ambiente_pt

end

Quando 'Navego ate a tela de configurações de relogios de pt' do

    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')

    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click

end

Quando 'Clico para salvar a configuração de pt' do

    find('label[for="radioModelo29"]').click

    #clicando para salvar
    @common.botaosalvar_config_relogio()

end


Então 'Verifico os campos obrigatorios para cadastro da configuração de pt' do

    @obrigatorio.camp_obrig_config_relog_pt()

end



Quando 'Preencho os campos ultrapassando a quantidade permitida e clico para salvar de pt' do

    find('label[for="radioModelo29"]').click

    fill_in 'Codigo', with: '1111000'
    fill_in 'Descricao', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'

    @common.botaosalvar_config_relogio()

end

Então 'Aguardo a mensagem de que o limite permitido na descrição é 50 de pt' do

    expect(find('div[class=field-validation-error]')).to have_content 'O número máximo de caracteres para Descrição é 50.'

end



Quando 'Preencho os campos com caracteres especiais e clico em salvar de pt' do

    find('label[for="radioModelo29"]').click

    fill_in 'Codigo', with: '1111000'
    fill_in 'Descricao', with: '"!@#$%¨&*()_we'

    @common.botaosalvar_config_relogio()

end

Então 'Aguardo uma mensagem de sucesso na criação da configuração de pt {string}' do |message_sucess|

  #Mensagem de confirmação de cadastro de filial
  expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess

end