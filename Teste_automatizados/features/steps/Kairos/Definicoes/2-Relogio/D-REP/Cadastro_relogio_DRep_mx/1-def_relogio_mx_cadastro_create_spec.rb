Dado('Acesso a tela de relogios para cadastro do modelo D Rep de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuRelogios"')
  
end
  
Quando('Cadastrando um novo relogio modelo D Rep de mx') do
  
    #clicando para adicionar um novo cadastro de relogio
    find('label[class="pointer"]').click

    @cadastros_relogios.cadastro_relog_mx_mod_DRep()
  
end
  
Quando('Aperto para salvar o cadastro do relogio de mx') do
  
    @common.botaosalvar_mx()
    sleep 2
  
end
  
Então('Aguardo a confirmação de cadastro do relogio de mx {string}') do |message_sucess|
  
    #Mensagem de confirmação de criação de configuração de relogio
    expect(find('div[id=Summary-Field-Index]')).to have_content message_sucess
      
end