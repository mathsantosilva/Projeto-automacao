Então('vou até a tela de filiais e acesso a criação de empresas para validar os campos') do
  @common.nav_def('Empresa','Filiais', 'label[class="DefinitionsTitle"]')
  # Carrega as variaveis utilizadas nas spec
  @complements.geradores_dados_numericos_aleatorios
  @complements.geradores_tempo
  @complements.geradores_dados_documentos_empresa
  @complements.geradores_dados_endereco
  @complements.geradores_dados_internet
end

Dado('que entro na criação de filial e clico em salvar') do
  find('span[class="PlusButton"]').click
  @common.botao_salvar_geral
end

Então('deverá informar as seguintes obrigatoriedades na criação de filiais') do |table|
  mensagens = table.rows_hash
  @validadores.validar_mensagem_obrigacao_campos(mensagens)
end

Dado('que preencho os dados da filial focando no limite dos campos e clico em salvar') do
  find('span[class="PlusButton"]').click
  @codigoAtual = $codigo_aleatorio_10.to_s.slice(0,9)
  fill_in 'Filial_Codigo', with: ""
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: '11111111111111111111111111111111111111111111111111'
  fill_in 'Filial_Descricao', with: 'Automação de testes - Validação limite dos campos - ' << $time.to_s
  fill_in 'Filial_CnpjCpf', with: $cnpj
  fill_in 'Filial_Endereco', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  fill_in 'Filial_Bairro', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  fill_in 'Filial_Cidade', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  fill_in 'Filial_UF', with: 'xxxxxxxxxx'
  fill_in 'Filial_Pais', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  fill_in 'Filial_URL', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  fill_in 'Filial_Email', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.brrrrrrrrrrr'
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Filial_InicioHorarioVerao', with: '10032021'
  fill_in 'Filial_FimHorarioVerao', with: '10052021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10052021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '10072021'
  fill_in 'ConnectChave_ChaveConnect', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
  @common.botao_salvar_geral 
end

Quando('acesso a filial recem criada com o limite dos campos') do
  @consultores.consulta_acessa_empresa_codigo(@codigoAtual)
end

Então('devera conter somente a quantidade de caracteres aceitos pelos campos de cadastro da filial') do |table|
  valores = table.rows_hash
  @validadores.validar_valor_campos(valores)
end

Dado('que preencho os dados da filial com varios tipos de caracteres e clico em salvar') do
  find('span[class="PlusButton"]').click
  @codigoAtual = $codigo_aleatorio_10.to_s.slice(0,9)
  fill_in 'Filial_Codigo', with: ""
  fill_in 'Filial_Codigo', with: $codigo_aleatorio_10
  fill_in 'Filial_CEI', with: '294226088484'
  fill_in 'Filial_Telefone', with: '11111111111111111111'
  fill_in 'Filial_Descricao', with: 'Automação de testes - Validação caracteres aceitos - ' << $time.to_s
  fill_in 'Filial_CnpjCpf', with: $cnpj
  fill_in 'Filial_Endereco', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*""?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333"
  fill_in 'Filial_Bairro', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111"
  fill_in 'Filial_Cidade', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111"
  fill_in 'Filial_UF', with: "1a"
  fill_in 'Filial_Pais', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y"
  fill_in 'Filial_URL', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333"
  fill_in 'Filial_Email', with: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.br"
  find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
  fill_in 'Filial_InicioHorarioVerao', with: '10032021'
  fill_in 'Filial_FimHorarioVerao', with: '10052021'
  fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10052021'
  fill_in 'Filial_DataLimiteTratamentoPonto', with: '10072021'
  fill_in 'ConnectChave_ChaveConnect', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p"
  @common.botao_salvar_geral
end

Quando('acesso a filial recem criada com os tipos de caracteres diferentes') do
  @consultores.consulta_acessa_empresa_codigo(@codigoAtual)
end

Então('devera conter somente os caracteres aceitos pelos campos de cadastro da filial') do |table|
  valores = table.rows_hash
  @validadores.validar_valor_campos(valores)
end