Dado('Acesso a tela de relogios para atualizar o modelo D Rep de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuRelogios"')
  
end
  
Quando('Clico para alterar o relogio cadastrado e preencho com novas informações de mx') do
  
    @common.select_button('body > div.ZonaConteudo > div.Conteudo.ConteudoDefinitions > table > tbody > tr:nth-child(1)','img[class="pointer icons editIcon"]')
  
    @cadastros_relogios.alterando_relog_mx_mod_DRep()

end
  
Quando('Clico para salvar a nova alteração do relogio de mx') do
  
    @common.botaosalvar_mx()
    sleep 2
  
end
  
Então('Aguardo a mensagem de que foi atualizado com sucesso de mx {string}') do |message_sucess|
  
    #Mensagem de confirmação de atualização do relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end