Dado('Acesso a tela de relogios para deletar a configuração de pt') do

    #logando
    @login.logon_ambiente_pt
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')
  
end
  
Quando('deleto a configuração de pt') do
  
    #Selecionando o botão alterar
    @common.select_button('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(2)','img[class="pointer icons deleteIcon"]')
  
end
  
Quando('Confirmo a remoção da configuração de pt') do
  
    @common.confir_remover()
    sleep 2
  
end
  
Então('Aguardo a confirmação de remoção da configuração de pt {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end