Então('vou até a tela de filiais para validar os campos') do
  # Acessando a empresa pela navegacao de telas
  @common.nav_def('Empresa','Filiais', 'label[class="DefinitionsTitle"]')
end

Quando('vou para a criação de filiais para validar os campos') do
  find('span[class="PlusButton"]').click
end

Então('passo por todos os campos da criação de filiais em Portugues-BR na criação') do |table|
  valor_resoureces = table.rows_hash
  @validadores.validar_nome_Campos(valor_resoureces)
end

Quando('altero uma filial para validar os campos') do
  @consultores.consulta_acessa_filial('Criação filial CNPJ')
end

Então('passo por todos os campos da edição de filiais em portugues-BR no update') do |table|
  valor_resoureces = table.rows_hash
  @validadores.validar_nome_Campos(valor_resoureces)
end