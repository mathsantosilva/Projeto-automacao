Dado('Acesso a tela de relogios para cadastrar um relogio com informações iguais de pt') do

    #logando
    @login.logon_ambiente_pt
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuRelogios"')
  
  end
  
  Quando('Cadastro um relogio D Rep com informações para serem repetidas de pt') do

    #Cadastrando uma nova configuração do modelo D Rep
    @cadastros_relogios.cadastro_relog_pt_mod_DRep_informacoes_iguais()

  end
  
  Quando('Cadastro novamente um relogio D Rep com as mesmas informações e altero conforme for apresentado os erros de pt') do
  
    @cadastros_relogios.cadastro_relog_pt_mod_DRep_informacoes_iguais_2()
  
  end
  
  Então('Aguardo a mensagem de cadastro com sucesso de pt {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
  end