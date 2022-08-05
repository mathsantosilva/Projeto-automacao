Dado('Acesso a tela de relogios para atualizar o modelo D Rep de pt') do

    #logando
    @login.logon_ambiente_pt
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuRelogios"')
  
end
  
Quando('Clico para alterar o relogio cadastrado e preencho com novas informações de pt') do
  
    @common.select_button('body > div.ZonaConteudo > div.Conteudo.ConteudoDefinitions > table > tbody > tr:nth-child(1)','img[class="pointer icons editIcon"]')
  
    @cadastros_relogios.alterando_relog_pt_mod_DRep()

end
  
Quando('Clico para salvar a nova alteração do relogio de pt') do
  
    @common.botaosalvar()
    sleep 2
  
end
  
Então('Aguardo a mensagem de que foi atualizado com sucesso de pt {string}') do |message_sucess|
  
    #Mensagem de confirmação de atualização do relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end