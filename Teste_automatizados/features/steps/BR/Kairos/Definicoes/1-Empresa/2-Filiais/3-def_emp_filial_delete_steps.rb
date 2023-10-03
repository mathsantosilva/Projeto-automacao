Então('vou até a tela de filiais para remover uma filial existente') do
  # Acessando a empresa pela navegacao de telas
  @common.nav_def('Empresa','Filiais', 'label.DefinitionsTitle')
end

Dado('que clico na ultima filial criada com CNPJ na lista') do
  @common.apagar_filial('Exclusão filial CNPJ')
end

Dado('que clico na ultima filial criada com CPF na lista') do
  @common.apagar_filial('Exclusão filial CPF')
end

Então('deverá apresentar a mensagem de sucesso na remoção da filial {string}') do |message_success|
  expect(find('div[id=Summary-Field-Index]')).to have_content message_success
end