Dado('Acesso a tela de relogios para criar a configuração na madis') do

    #logando
    @login.logon_ambiente_br
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')
  
  end
  
  Quando('Cadastrando uma nova configuração na madis') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click
    
    find('label[for="radioModelo30"]').click
    fill_in 'Codigo', with: $codigo_aleatorio
    fill_in 'Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
    select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option
  
  end
  
  Quando('Aperto no botão salvar a configuração na madis') do
  
    @common.botaosalvar_config_relogio()
    sleep 2
  
  end
  
  Então('Aguardo a confirmação de criacao da configuração na madis {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
  end