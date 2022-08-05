Dado 'Logo no sistema para fazer as verificações dos campos no cadastro de relogio' do

    #Faço o login no sistema
    @login.logon_br

end

Quando 'Navego ate a tela de cadastro de relogios para fazer a verificação' do

    #Acessando o cadastro de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuRelogios"')

    #Cadastrando um novo relogio do modelo D Rep
    find('label[class="pointer"]').click

end

Quando 'Seleciono o modelo D Rep e clico para salvar o cadastro' do

    #Selecionando o modelo de relogio D Rep
    select('D-REP', from: 'DdlModeloId').select_option
    sleep 1

    #clicando para salvar
    @common.botaosalvar()
    sleep 1

end


Então 'Verifico os campos obrigatorios para cadastro do relogio modelo D Rep' do

    @obrigatorio.camp_obrig_cadastro_relog_DRep()

end






# Quando 'Navego ate a tela de cadastro de relogios para fazer a verificação' do

#     #Acessando o cadastro de relogios pela navegação de telas
#     @common.nav_def('Relógios','div[id="MenuRelogios"')

#     #Cadastrando um novo relogio do modelo D Rep
#     find('label[class="pointer"]').click

# end

Quando 'Preencho os campos no cadastro do relogio ultrapassando a quantidade permitida e clico para salvar' do

    #Selecionando o modelo de relogio D Rep
    select('D-REP', from: 'DdlModeloId').select_option
    #Selecionando a configuração
    select('Relogio D Rep 2022-06-29 15:30:02 -0300', from: 'DdlConfiguracaoId').select_option

    @cadastros_relogios.cadastro_relog_mod_DRep_val_limite()

    @common.botaosalvar()

end

Então 'Então clico em alterar e verifico se foi cadastrado com a quantidade correta' do

    #clicando para alterar o relogio cadastrado
    @common.select_button('body > div.ZonaConteudo > div.Conteudo.ConteudoDefinitions > table > tbody > tr:nth-child(1)','img[class="pointer icons editIcon"]')

    @obrigatorio.verificacao_campos_cadastro_relog_mod_DRep()

end







# Quando 'Navego ate a tela de cadastro de relogios para fazer a verificação' do

#      #Acessando o cadastro de relogios pela navegação de telas
#     @common.nav_def('Relógios','div[id="MenuRelogios"')

#     #Cadastrando um novo relogio do modelo D Rep
#     find('label[class="pointer"]').click

# end

Quando 'Preencho os campos no cadastro do relogio com caracteres especiais e clico em salvar' do

    @cadastros_relogios.cadastro_relog_mod_DRep_carac_especiais()

end

Então 'Aguardo uma mensagem de sucesso no cadastro do relogio {string}' do |message_sucess|

  #Mensagem de confirmação de cadastro de filial
  expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess

end