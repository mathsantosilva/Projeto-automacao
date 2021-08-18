describe 'estrutura', :estrutura do
  before(:each) do
    visit '/Dimep/Account/LogOn?ReturnUrl=%2F'

    fill_in 'LogOnModel_UserName', with: @login
    fill_in 'LogOnModel_Password', with: @senha
    click_button 'Entrar'

    # Acessando o cadastro estrutura organizacional pela navegação de telas
    selecionar = find('div[id="toggleUserDefinitions"]')
    selecionar.hover
    sleep 3
    find('div[class="pointer DropDownHeaderElement"]', text: 'Empresa').click
    find('div[id="MenuEstrutura"]').click

  end

  it 'CT003 Inserir uma nova estrutura organizacional', :ct003_estrutura do
    fill_in 'ModelEstruturaOrganizacional_Descricao', with: 'Estrutura Nova'
    fill_in 'ModelEstruturaOrganizacional_Codigo', with: '1001'

    drop = find('.DivDescricaoEstrutura', text: 'Principal')
    drop.click

    drop = find('.pointer', text: 'Adicionar', match: :first)
    drop.click

    expect(find('form[id=FormEstruturas]')).to have_content 'A Estrutura Organizacional foi criada com sucesso'
  end
end
