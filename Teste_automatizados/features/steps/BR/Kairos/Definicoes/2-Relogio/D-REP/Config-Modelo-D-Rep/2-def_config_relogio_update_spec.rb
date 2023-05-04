Dado('Acesso a tela de relogios para atualizar a configuração') do

    #logando
    @login.logon_ambiente_br
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')
  
  end
  
  Quando('atualizo a configuração') do
  
    #Selecionando o botão alterar
    @common.select_button('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(1)','img[class="pointer icons editIcon"]')

    fill_in 'Codigo', with: $codigo_aleatorio
    fill_in 'Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
    select('6,6', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option
  
  end
  
  Quando('Aperto no botão salvar para atualizar a configuração') do
  
    @common.botaosalvar_config_relogio()
    sleep 2
  
  end
  
  Então('Aguardo a confirmação de atualizacao da configuração {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
  end