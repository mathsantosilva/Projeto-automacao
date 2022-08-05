Dado('Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido de pt') do

    #logando
    @login.logon_ambiente_pt
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')
  
end
  
Quando('Cadastro uma nova configuração de relogio D Rep de pt') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    @cadastros_relogios.cadastro_cod_repetido_config_relog_pt_DRep()

    @common.botaosalvar_config_relogio()

    sleep 2

    expect(find('div[class=validation-summary-ok]')).to have_content 'A Configuração Relógio foi criada com sucesso'
  
end
  
Quando('Cadastro novamente uma nova configuração de relogio D Rep com o codigo e descrição iguais de pt') do
  
    @cadastros_relogios.cadastro_cod_repetido_config_relog_pt_DRep()

    @common.botaosalvar_config_relogio()

    sleep 1
  
end
  
Então('Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo e descrição de pt') do
  
    expect(find('div[class=field-validation-error]')).to have_content 'Já existe uma Configuração Relógio com essa descrição'

    fill_in 'Descricao', with: $text_aleatorio

    @common.botaosalvar_config_relogio()

    expect(find('div[class=field-validation-error]')).to have_content 'Já existe uma Configuração Relógio com o código inserido'

    fill_in 'Codigo', with: $codigo_aleatorio

    @common.botaosalvar_config_relogio()
      
end