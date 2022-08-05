Dado('Acesso a tela de relogios para remover o modelo D Rep da madis') do

    #logando
    @login.logon_br
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuRelogios"')
  
end
  
Quando('Seleciono o relogio cadastrado e clico em remover da madis') do
  
    @common.select_button('body > div.ZonaConteudo > div.Conteudo.ConteudoDefinitions > table > tbody > tr:nth-child(1)','img[class="pointer icons deleteIcon"]')

end
  
Quando('Clico para confirmar a remoção da madis') do
  
    @common.confir_remover()
    sleep 1
  
end
  
Então('Aguardo a mensagem de que o relogio foi removido com sucesso da madis {string}') do |message_sucess|
  
    #Mensagem de confirmação de remoção do relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end