Dado('Acesso a tela de relogios para criar uma configuração com codigo e descrição repetido de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuConfiguracoesRelogios"')
  
end
  
Quando('Cadastro uma nova configuração de relogio D Rep de mx') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    @cadastros_relogios.cadastro_cod_repetido_config_relog_mx_DRep()

    @common.botaosalvar_config_relogio_mx()

    sleep 2

    expect(find('div[class=validation-summary-ok]')).to have_content 'La Configuración del reloj fue creada con éxito'
  
end
  
Quando('Cadastro novamente uma nova configuração de relogio D Rep com o codigo e descrição iguais de mx') do
  
    @cadastros_relogios.cadastro_cod_repetido_config_relog_mx_DRep()

    @common.botaosalvar_config_relogio_mx()

    sleep 1
  
end
  
Então('Aguardo a mensagem de que ja existe uma configuração de relogio com o mesmo codigo e descrição de mx') do
  
    expect(find('div[class=field-validation-error]')).to have_content 'Ya existe una Configuración del reloj con esa descripción'

    fill_in 'Descricao', with: $text_aleatorio

    @common.botaosalvar_config_relogio_mx()

    expect(find('div[class=field-validation-error]')).to have_content 'Ya exite una Configuración del reloj con código insertado'

    fill_in 'Codigo', with: $codigo_aleatorio

    @common.botaosalvar_config_relogio_mx()
      
end