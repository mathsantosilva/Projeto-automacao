Então('vou até a tela de empresa e acesso a criação de empresas para validar os campos') do
    @common.nav_def('Empresa','Empresas', 'label[class="DefinitionsTitle"]')
    # Carrega as variaveis utilizadas nas spec
    @complements.geradores_dados_numericos_aleatorios
    @complements.geradores_tempo
    @complements.geradores_dados_documentos_empresa
    @complements.geradores_dados_endereco
    @complements.geradores_dados_internet
  end
  
  Dado('que entro na criação de empresa e clico em salvar') do
    find('span[class="PlusButton"]').click
    @common.botao_salvar_geral
  end
  
  Então('deverá informar as seguintes mensagens') do |table|
    mensagens = table.rows_hash
    @validadores.validar_mensagem_obrigacao_campos(mensagens)
  end
  
  Dado('que preencho os dados focando no limite dos campos e clico em salvar') do
        find('span[class="PlusButton"]').click
        @codigoAtual = $codigo_aleatorio_10.to_s.slice(0,9)
        fill_in 'Empresa_Codigo', with: ""
        fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
        fill_in 'Empresa_CEI', with: '294226088484'
        fill_in 'Empresa_Telefone', with: '11111111111111111111111111111111111111111111111111'
        fill_in 'Empresa_RazaoSocial', with: 'Automação de testes - Validação limite dos campos - ' << $time.to_s
        fill_in 'Empresa_CnpjCpf', with: $cnpj
        fill_in 'Empresa_Endereco', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        fill_in 'Empresa_Bairro', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        fill_in 'Empresa_Cidade', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        fill_in 'Empresa_UF', with: 'xxxxxxxxxx'
        fill_in 'Empresa_Pais', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        fill_in 'Empresa_URL', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        fill_in 'Empresa_Email', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.brrrrrrrrrrr'
        fill_in 'Empresa_DataAbertura', with: '01012021'
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
        fill_in 'Empresa_FimHorarioVerao', with: '10052021'
        fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
        fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
        fill_in 'connectChave_ChaveConnect', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        @common.botao_salvar_geral
  end
  
  Quando('acesso a empresa recem criada com o limite dos campos') do
    @consultores.consulta_acessa_empresa_codigo(@codigoAtual)
  end
  
  Então('devera conter somente a quantidade de caracteres aceitos pelos campos') do |table|
    valores = table.rows_hash
    @validadores.validar_valor_campos(valores)
  end
  
  Dado('que preencho os dados com varios tipos de caracteres e clico em salvar') do
    find('span[class="PlusButton"]').click
    @codigoAtual = $codigo_aleatorio_10.to_s.slice(0,9)
    fill_in 'Empresa_Codigo', with: ""
    fill_in 'Empresa_Codigo', with: $codigo_aleatorio_10
    fill_in 'Empresa_CEI', with: '294226088484'
    fill_in 'Empresa_Telefone', with: '11111111111111111111'
    fill_in 'Empresa_RazaoSocial', with: 'Automação de testes - Validação caracteres aceitos - ' << $time.to_s
    fill_in 'Empresa_CnpjCpf', with: $cnpj
    fill_in 'Empresa_Endereco', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*""?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333"
    fill_in 'Empresa_Bairro', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111"
    fill_in 'Empresa_Cidade', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111"
    fill_in 'Empresa_UF', with: "1a"
    fill_in 'Empresa_Pais', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y"
    fill_in 'Empresa_URL', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333"
    fill_in 'Empresa_Email', with: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.br"
    fill_in 'Empresa_DataAbertura', with: '01012021'
    find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
    fill_in 'Empresa_FimHorarioVerao', with: '10052021'
    fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
    fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
    fill_in 'connectChave_ChaveConnect', with: "1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p"
    @common.botao_salvar_geral 
  end
  
  Quando('acesso a empresa recem criada com os tipos de caracteres diferentes') do
    @consultores.consulta_acessa_empresa_codigo(@codigoAtual)
  end
  
  Então('devera conter somente os caracteres aceitos pelos campos') do |table|
    valores = table.rows_hash
    @validadores.validar_valor_campos(valores)
  end
  