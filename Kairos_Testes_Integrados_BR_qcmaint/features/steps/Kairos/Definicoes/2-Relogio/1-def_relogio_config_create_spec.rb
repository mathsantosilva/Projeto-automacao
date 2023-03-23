Dado('Acesso a tela de configuração de relogios para cadastrar uma nova configuração') do
      # Realiza login
      @login.logon_br
      # Acessando a empresa pela navegacao de telas
      @common.nav_def('Relógios', 'Configurações Relógio', 'label[class="pointer"]')
      # Carrega as variaveis utilizadas nas spec
      @complements.varcommon
      @complements.varcadastro  
end

#Cadastrando relogio BioPoint II Sensor3
Quando('Inicio o cadastro de um novo relogio modelo BioPoint II Sensor3') do
  find('label[for="radioModelo1"]').click
  find('input[id="Codigo"]').set '101'
  find('input[id="Descricao"]').set 'Teste automático - BioPoint II - Sensor 3'
  find('label[for="GSM"]').click
  find('input[id="ipServidorGSM"]').set '192.168.173.100'
  find('input[id="portaServidorGSM"]').set '8019'
  find('label[for="radioTipoAcionamento703"]').click
  select('50', from: 'TaxaAmostragem')
  find('input[id="TempoAcionamento"]').set '5,5'
  find('label[for="TerminalAtivado"]').click
  select('Teste 1', from: 'ConfiguracaoFuncao')
  find('label[for="PrimeiroLeitor"]').click
  find('label[for="SegundoLeitor"]').click
end

#Cadastrando relogio Micro Point Exportação
Quando('Inicio o cadastro de um novo relogio modelo Micro Point Exportação') do
  find('label[for="radioModelo2"]').click
  find('input[id="Codigo"]').set '102'
  find('input[id="Descricao"]').set 'Teste automático - Micro Point Exportação'
  find('label[for="GSM"]').click
  find('input[id="ipServidorGSM"]').set '192.168.173.100'
  find('input[id="portaServidorGSM"]').set '8019'
  find('label[for="radioTipoAcionamento703"]').click
  select('50', from: 'TaxaAmostragem')
  select('Teste 1', from: 'ConfiguracaoFuncao')
  find('input[id="TempoAcionamento"]').set '5,5'
  find('label[for="TerminalAtivado"]').click
end

Quando('Inicio o cadastro de um novo relogio modelo PrintPoint II') do
  find('label[for="radioModelo9"]').click
  find('input[id="Codigo"]').set '103'
  find('input[id="Descricao"]').set 'Teste automático - Printpoint 2'
  find('label[for="GSM"]').click
  find('input[id="ipServidorGSM"]').set '192.168.173.100'
  find('input[id="portaServidorGSM"]').set '8019'
  find('span[id="TabGeral"]').click
  find('label[for="checkLeituraViaTeclado"]').click
  find('label[for="radioTecladoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="checkLeituraViaCartao"]').click
  find('label[for="radioCartaoPis"]').click
  find('label[for="radioCartaoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="radioPersonalizacaoEspecial1"]').click
  find('input[id="ConfiguracaoREP.NumeroDigitosPersonalizacao"]').set '12'
  find('input[id="ConfiguracaoREP.CodigoPersonalizacao"]').set '1234'
  find('label[for="checkHabilita1ParaN"]').click
  find('label[for="radioIdentificacaoApenasSenha"]').click
  find('label[for="radioAutenticacaoParcial"]').click
  select('9', from: 'ConfiguracaoREP_BiometriaNivelSegurancaSagem')
  find('span[id="TabTipoLeitura"]').click
  @complements.cadastro_tipo_leitura
  @complements.cadastro_impressora
  @complements.cadastro_dados_empregador
end

Quando('Inicio o cadastro de um novo relogio modelo Mini Print') do
  find('label[for="radioModelo11"]').click
  find('input[id="Codigo"]').set '104'
  find('input[id="Descricao"]').set 'Teste automático - Mini Print'
  find('label[for="GSM"]').click
  find('input[id="ipServidorGSM"]').set '192.168.173.100'
  find('input[id="portaServidorGSM"]').set '8019'
  find('span[id="TabGeral"]').click
  find('label[for="checkLeituraViaTeclado"]').click
  find('label[for="radioTecladoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="checkLeituraViaCartao"]').click
  find('label[for="radioCartaoPis"]').click
  find('label[for="radioCartaoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="radioPersonalizacaoEspecial1"]').click
  find('input[id="ConfiguracaoREP.NumeroDigitosPersonalizacao"]').set '12'
  find('input[id="ConfiguracaoREP.CodigoPersonalizacao"]').set '1234'
  find('label[for="checkHabilita1ParaN"]').click
  find('label[for="radioIdentificacaoApenasSenha"]').click
  find('label[for="radioAutenticacaoParcial"]').click
  select('9', from: 'ConfiguracaoREP_BiometriaNivelSegurancaSagem')
  # @complements.cadastro_tipo_leitura
  @complements.cadastro_impressora
  @complements.cadastro_dados_empregador
end

Quando('Inicio o cadastro de um novo relogio modelo Face_FaceAccess II') do
  find('label[for="radioModelo13"]').click
  find('input[id="Codigo"]').set '105'
  find('input[id="Descricao"]').set 'Teste automático - Face / FaceAccess II'
  find('label[for="radioConfiguracao1ParaN"]').click
end

Quando('Inicio o cadastro de um novo relogio modelo Face Access S') do
  find('label[for="radioModelo27"]').click
  find('input[id="Codigo"]').set '106'
  find('input[id="Descricao"]').set 'Teste automático - Face Access S'
  find('input[id="enderecoIP"]').set '192.168.173.100'
  find('input[id="PortaServidor"]').set '8019'
  find('label[for="radioConfiguracao1ParaN"]').click

end

Quando('Inicio o cadastro de um novo relogio modelo Biolite Normal') do
  find('label[for="radioModelo14"]').click
  find('input[id="Codigo"]').set '107'
  find('input[id="Descricao"]').set 'Teste automático - Biolite Normal'
  select('BW', from: 'BioliteType')
  find('label[for="BioliteTemplateVersion9"]').click
end

Quando('Inicio o cadastro de um novo relogio modelo PrintPoint III') do
  find('label[for="radioModelo15"]').click
  find('input[id="Codigo"]').set '108'
  find('input[id="Descricao"]').set 'Teste automático - PrintPoint 3'
  find('label[for="GSM"]').click
  find('input[id="ipServidorGSM"]').set '192.168.173.100'
  find('input[id="portaServidorGSM"]').set '8019'
  find('span[id="TabGeral"]').click
  find('label[for="checkLeituraViaTeclado"]').click
  find('label[for="radioTecladoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="checkLeituraViaCartao"]').click
  find('label[for="radioCartaoPis"]').click
  find('label[for="radioCartaoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="radioPersonalizacaoEspecial1"]').click
  find('input[id="ConfiguracaoREP.NumeroDigitosPersonalizacao"]').set '12'
  find('input[id="ConfiguracaoREP.CodigoPersonalizacao"]').set '1234'
  find('label[for="checkHabilita1ParaN"]').click
  find('label[for="radioIdentificacaoApenasSenha"]').click
  find('label[for="radioAutenticacaoParcial"]').click
  select('9', from: 'ConfiguracaoREP_BiometriaNivelSegurancaSagem')
  @complements.cadastro_tipo_leitura
  @complements.cadastro_impressora
  @complements.cadastro_dados_empregador
end

Quando('Inicio o cadastro de um novo relogio modelo FaceAccess') do
  find('label[for="radioModelo17"]').click
  find('input[id="Codigo"]').set '109'
  find('input[id="Descricao"]').set 'Teste automático - FaceAccess normal'
  find('input[id="enderecoIP"]').set '192.168.173.100'
  find('input[id="PortaServidor"]').set '8019'
  find('input[id="ChaveCriptografia"]').set '0000000000-0000000000-0000000000-0000000000'

  #Basico
   select('7', from: 'ConfiguracaoFace_SelectedVolume')

  #Log de Dados
    find('span[id="TabLog"]').click
    find('input[id="ConfiguracaoFace_AlertaLogSistema"]').set '13'
    find('input[id="ConfiguracaoFace_AlertaLogVerificacao"]').set '13'

  #Energia
    find('span[id="TabEnergia"]').click
    find('input[id="ConfiguracaoFace_TempoHibernacao"]').set '13'

  #Autenticação
    find('span[id="TabAutenticacao"]').click
    select('Face', from: 'ConfiguracaoFace_SelectedModo')
    find('input[id="ConfiguracaoFace_TempoReverificacao"]').set '13'

  #Segurança
    find('span[id="TabSeguranca"]').click
    find('input[id="ConfiguracaoFace_PinMaster"]').set 'teste'

  #Outros
    find('span[id="TabOutros"]').click
    select('UserPhoto', from: 'ConfiguracaoFace_SelectedModoCaptura')
    select('Wiegand34', from: 'ConfiguracaoFace_SelectedTipoLeitura')
    find('[for="checkAssistirInterferencia"]').click
    find('[for="checkLigarCameraLeds"]').click
    find('input[id="ConfiguracaoFace_TempoDesbloqueio"]').set '13'
    find('input[id="ConfiguracaoFace_TempoLimitePortaAberta"]').set '13'
    select('Normalmente Fechado', from: 'ConfiguracaoFace_SelectedTipoSensor')
end

Quando('Inicio o cadastro de um novo relogio modelo Printpoint LI') do
  find('label[for="radioModelo19"]').click
  fill_in 'Codigo', with: '110'
  fill_in 'Descricao', with: 'Teste automático - Printpoint li'
  @complements.cadastro_dados_empregador
end

Quando('Inicio o cadastro de um novo relogio modelo Biolite NG') do
  find('label[for="radioModelo21"]').click
  fill_in 'Codigo', with: '111'
  fill_in 'Descricao', with: 'Teste automático - Biolite NG'
end

Quando('Inicio o cadastro de um novo relogio modelo Smart') do
  find('label[for="radioModelo22"]').click
  find('input[id="Codigo"]').set '112'
  find('input[id="Descricao"]').set 'Teste automático - Smart'
  find('label[for="GSM"]').click
  find('input[id="ipServidorGSM"]').set '192.168.173.100'
  find('input[id="portaServidorGSM"]').set '8019'
  find('span[id="TabGeral"]').click
  find('label[for="checkLeituraViaTeclado"]').click
  find('label[for="radioTecladoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="checkLeituraViaCartao"]').click
  find('label[for="radioCartaoPis"]').click
  find('label[for="radioCartaoAutenticacaoBiometriaOuSenha"]').click
  find('label[for="radioPersonalizacaoEspecial1"]').click
  find('input[id="ConfiguracaoREP.NumeroDigitosPersonalizacao"]').set '12'
  find('input[id="ConfiguracaoREP.CodigoPersonalizacao"]').set '1234'
  find('label[for="checkHabilita1ParaN"]').click
  find('label[for="radioIdentificacaoApenasSenha"]').click
  find('label[for="radioAutenticacaoParcial"]').click
  select('9', from: 'ConfiguracaoREP_BiometriaNivelSegurancaSagem')
end

Quando('Inicio o cadastro de um novo relogio modelo HENRY') do
  find('label[for="radioModelo23"]').click
  find('input[id="Codigo"]').set '113'
  find('input[id="Descricao"]').set 'Teste automático - Henry'
  find('label[for="LeitoresVerificamDigital"]', visible: false).set(true) 
  find('input[id="TamanhoBobinaHenry"]').set '50'
  @complements.cadastro_dados_empregador
end

Quando('Inicio o cadastro de um novo relogio modelo Control ID') do
  find('label[for="radioModelo26"]').click
  find('input[id="Codigo"]').set '114'
  find('input[id="Descricao"]').set 'Teste automático - Control ID'
  find('label[for="LeitoresVerificamDigital"]', visible: false).set(true) 
  find('input[id="TamanhoBobinaControlID"]').set '50'
  @complements.cadastro_dados_empregador
end

Quando('Clico para salvar o cadastro da configuração do relogio') do
  drop = find('input[type="submit"][value="Salvar"]', match: :first)
  drop.click  
end

Então('Aguardo a confirmação do cadastro da configuração do relogio {string}') do |message|
  expect(find('div[id=Summary-Field-Index]')).to have_content message
end