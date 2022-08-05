Dado('Acesso a tela de relogios para deletar a configuração da madis') do

    #logando
    @login.logon_br
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')
  
  end
  
  Quando('deleto a configuração da madis') do
  
    #Selecionando o botão alterar
    @common.select_button('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(2)','img[class="pointer icons deleteIcon"]')
  
  end
  
  Quando('Confirmo a remoção da configuração da madis') do
  
    @common.confir_remover()
    sleep 2
  
  end
  
  Então('Aguardo a confirmação de remoção da configuração da madis {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
  end