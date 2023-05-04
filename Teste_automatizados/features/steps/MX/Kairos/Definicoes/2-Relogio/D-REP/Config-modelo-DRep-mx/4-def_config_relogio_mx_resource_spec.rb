Dado('Efetuo o login para verificar os resources da configuração de relogio de mx') do

    #logando
    @login.logon_ambiente_mx
  
    sleep 1
  
end
  
Quando('Acesso a tela de relogios para validar o resource da configuração de mx') do
  
    #Acessando o cadastro da configuração de relogios pela navegação de telas
    @common.nav_def('Relojes','div[id="MenuConfiguracoesRelogios"')

end
  
Quando('Acesso o cadastro da configuração de relogio para validar os resources de mx') do
  
    #Cadastrando uma nova configuração do modelo D Rep
    find('label[class="pointer"]').click

    #Selecionando o modelo de relogio D Rep
    find('label[for="radioModelo29"]').click
  
end
  
Então('Verifico os resources do relogio modelo D Rep de mx') do
  
    expect(page).to have_content 'Modelo:'
    expect(page).to have_content 'D-REP'
    expect(page).to have_content 'Registro:'
    expect(page).to have_content 'Descripción:'
    expect(page).to have_content 'General'
    expect(page).to have_content 'Security Facial'
    expect(page).to have_content 'Nivel de seguridad Visica de biometría facial:'
      
end