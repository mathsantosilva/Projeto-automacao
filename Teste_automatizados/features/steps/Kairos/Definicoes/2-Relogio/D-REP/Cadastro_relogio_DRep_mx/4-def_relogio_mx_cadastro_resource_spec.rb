Dado('Efetuo o login para verificar os resources do cadastro de relogio de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
end
  
Quando('Acesso a tela de relogios para validar o resource do cadastro de mx') do
  
    #Acessando o cadastro de relogios pela navegação
    @common.nav_def('Relojes','div[id="MenuRelogios"')

end
  
Quando('Clico para adicionar um novo relogio e seleciono o modelo D Rep de mx') do
  
    #Cadastrando um novo relogio modelo D Rep
    find('label[class="pointer"]').click

    #Selecionando o modelo D Rep
    select('D-REP', from: 'DdlModeloId').select_option
  
end
  
Então('Verifico os resources do cadastrode relogio modelo D Rep de mx') do
  
    @resources.validando_nome_Campos($campos_cadastro_relogio_DRep_mx)
      
end