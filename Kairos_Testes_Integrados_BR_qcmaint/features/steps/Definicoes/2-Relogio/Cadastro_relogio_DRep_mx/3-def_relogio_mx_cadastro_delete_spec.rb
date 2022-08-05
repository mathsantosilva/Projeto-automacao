Dado('Acesso a tela de relogios para remover o modelo D Rep de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuRelogios"')
  
end
  
Quando('Seleciono o relogio cadastrado e clico em remover de mx') do
  
    @common.select_button('body > div.ZonaConteudo > div.Conteudo.ConteudoDefinitions > table > tbody > tr:nth-child(1)','img[class="pointer icons deleteIcon"]')

end
  
Quando('Clico para confirmar a remoção de mx') do
  
    @common.confir_remover()
    sleep 1
  
end
  
Então('Aguardo a mensagem de que o relogio foi removido com sucesso de mx {string}') do |message_sucess|
  
    #Mensagem de confirmação de remoção do relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end