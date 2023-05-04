Dado('Efetuo o login para verificar os resources da configuração de relogio de pt') do

    #logando
    @login.logon_ambiente_pt
  
    sleep 1
  
end
  
Quando('Acesso a tela de relogios para validar o resource da configuração de pt') do
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relógios','div[id="MenuConfiguracoesRelogios"')

end
  
Quando('Acesso o cadastro da configuração de relogio para validar os resources de pt') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click

    #Selecionando o modelo de relogio D Rep
    find('label[for="radioModelo29"]').click
  
end
  
Então('Verifico os resources do relogio modelo D Rep de pt') do
  
    expect(page).to have_content 'Modelo:'
    expect(page).to have_content 'D-REP'
    expect(page).to have_content 'Código:'
    expect(page).to have_content 'Descrição:'
    expect(page).to have_content 'Geral'
    expect(page).to have_content 'Segurança Facial'
    expect(page).to have_content 'Biometria Facial Nível de Segurança Visica:'
      
end