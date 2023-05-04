Dado('Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido') do

    #logando
    @login.logon_ambiente_br
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')
  
  end
  
  Quando('Cadastro uma nova configuração de relogio D Rep') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    @cadastros_relogios.cadastro_cod_repetido_config_relog_DRep()

    @common.botaosalvar_config_relogio()

    sleep 2

    expect(find('div[class=validation-summary-ok]')).to have_content 'A Configuração Relógio foi criada com sucesso'
  
  end
  
  Quando('Cadastro novamente uma nova configuração de relogio D Rep com o codigo igual') do
  
    @cadastros_relogios.cadastro_cod_repetido_config_relog_DRep_2()

    @common.botaosalvar_config_relogio()

    sleep 2
  
  end
  
  Então('Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo') do
  
    expect(find('div[class=field-validation-error]')).to have_content 'Já existe uma Configuração Relógio com o código inserido'
      
  end



  Quando('Cadastro uma nova configuração de relogio D Rep 2') do
  
    #Cadastrando uma nova configuração do modelo D Rep com a descrição igual
    @cadastros_relogios.cadastro_descr_repetida_config_relog_DRep()

    @common.botaosalvar_config_relogio()

    sleep 2

    expect(find('div[class=validation-summary-ok]')).to have_content 'A Configuração Relógio foi criada com sucesso'
  
  end
  
  Quando('Cadastro novamente uma nova configuração de relogio D Rep com a descrição igual') do
  
    @cadastros_relogios.cadastro_descr_repetida_config_relog_DRep()

    @common.botaosalvar_config_relogio()
    
    sleep 2
  
  end
  
  Então('Aguardo a mensagem de que ja existe uma configuração de relogio com a mesma descrição') do
  
    expect(find('div[class=field-validation-error]')).to have_content 'Já existe uma Configuração Relógio com essa descrição'
      
  end