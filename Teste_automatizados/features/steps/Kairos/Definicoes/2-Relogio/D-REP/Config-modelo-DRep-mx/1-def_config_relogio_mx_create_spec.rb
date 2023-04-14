Dado('Acesso a tela de relogios para criar a configuração de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuConfiguracoesRelogios"')
  
  end
  
  Quando('Cadastrando uma nova configuração de mx') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click
    
    find('label[for="radioModelo29"]').click
    fill_in 'Codigo', with: $codigo_aleatorio
    fill_in 'Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
    select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option
  
  end
  
  Quando('Aperto no botão salvar a configuração de mx') do
  
    @common.botaosalvar_config_relogio_mx()
    sleep 2
  
  end
  
  Então('Aguardo a confirmação de criacao da configuração de mx {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
  end