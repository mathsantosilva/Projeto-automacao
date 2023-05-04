Dado('Acesso a tela de relogios para atualizar o modelo D Rep da madis') do

    #logando
    @login.logon_ambiente_br
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuRelogios"')
  
end
  
Quando('Clico para alterar o relogio cadastrado e preencho com novas informações da madis') do
  
    @common.select_button('body > div.ZonaConteudo > div.Conteudo.ConteudoDefinitions > table > tbody > tr:nth-child(1)','img[class="pointer icons editIcon"]')
  
    @cadastros_relogios.alterando_relog_madis_mod_DRep()

end
  
Quando('Clico para salvar a nova alteração do relogio da madis') do
  
    @common.botaosalvar()
    sleep 2
  
end
  
Então('Aguardo a mensagem de que foi atualizado com sucesso da madis {string}') do |message_sucess|
  
    #Mensagem de confirmação de atualização do relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end