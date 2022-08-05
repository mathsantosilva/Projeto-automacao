Dado 'Faço login no sistema' do

    #Faço o login no sistema
    @login.logon_br

end

Quando 'Navego ate a tela de configurações de relogios' do

    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')

    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click

end

Quando 'Clico para salvar a configuração' do

    #clicando para salvar
    @common.botaosalvar_config_relogio()

end


Então 'Verifico os campos obrigatorios para cadastro da configuração' do

    @obrigatorio.camp_obrig_config_relog()

end



Quando 'Vou ate a tela de configurações de relogios' do

    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')

    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click

end

Quando 'Preencho os campos ultrapassando a quantidade permitida e clico para salvar' do

    find('label[for="radioModelo29"]').click

    fill_in 'Codigo', with: '1111000'
    fill_in 'Descricao', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'

    @common.botaosalvar_config_relogio()

end

Então 'Aguardo a mensagem de que o limite permitido na descrição é 50' do

    expect(find('div[class=field-validation-error]')).to have_content 'O número máximo de caracteres para Descrição é 50.'

end



Quando 'Acesso a tela de configurações de relogios' do

     #Acessando o cadastro da configuração de relogios pela navegação de telas
     @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')

     #Cadastrando uma nova configuração do modelo D Rep
     find('label[class="pointer"]').click

end

Quando 'Preencho os campos com caracteres especiais e clico em salvar' do

    find('label[for="radioModelo29"]').click

    fill_in 'Codigo', with: '1111000'
    fill_in 'Descricao', with: '"!@#$%¨&*()_we'

    @common.botaosalvar_config_relogio()

end

Então 'Aguardo uma mensagem de sucesso na criação da configuração {string}' do |message_sucess|

  #Mensagem de confirmação de cadastro de filial
  expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess

end