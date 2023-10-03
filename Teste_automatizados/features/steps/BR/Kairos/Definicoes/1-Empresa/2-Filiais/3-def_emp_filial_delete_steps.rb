Então('vou até a tela de empresas para remover uma filial existente') do
    # Acessando a empresa pela navegacao de telas
    @common.nav_def('Empresa','Filiais', 'label.DefinitionsTitle')
end

Dado('que clico na ultima filial apresentada na lista') do
  filial_linha = find('div.Conteudo table.ContentTable tbody tr:nth-last-child(1) td:nth-child(3)')
  filial_linha.hover
  filia_button = find('div.Conteudo table.ContentTable tbody tr:nth-last-child(1) td:nth-child(3) span.btnDeleteFilial')
  filia_button.click
  find('div.ui-dialog span#bFilial').click
end

Então('deverá apresentar a mensagem de sucesso na remoção da filial {string}') do |message_success|
  expect(find('div[id=Summary-Field-Index]')).to have_content message_success
end