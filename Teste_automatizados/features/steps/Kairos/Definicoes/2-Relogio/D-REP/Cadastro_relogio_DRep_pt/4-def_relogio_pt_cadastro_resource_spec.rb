Dado('Efetuo o login para verificar os resources do cadastro de relogio de pt') do

    #logando
    @login.logon_ambiente_pt
  
    sleep 1
  
end
  
Quando('Acesso a tela de relogios para validar o resource do cadastro de pt') do
  
    #Acessando o cadastro de relogios pela navegação
    @common.nav_def('Relógios','div[id="MenuRelogios"')

end
  
Quando('Clico para adicionar um novo relogio e seleciono o modelo D Rep de pt') do
  
    #Cadastrando um novo relogio modelo D Rep
    find('label[class="pointer"]').click

    #Selecionando o modelo D Rep
    select('D-REP', from: 'DdlModeloId').select_option
  
end
  
Então('Verifico os resources do cadastrode relogio modelo D Rep de pt') do
  
    @resources.validando_nome_Campos($campos_cadastro_relogio_DRep_pt)
      
end