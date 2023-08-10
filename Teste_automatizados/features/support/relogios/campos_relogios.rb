class Campos_relogios

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def cadastro_impressora
        #Impressora
        find('span[id="TabImpressora"]').click
        find('[for="radioMedio"]').click
        campo_corte = expect(find('[for="radioTotal"]', visible: false).boolean?)
        print campo_corte
        if campo_corte == true
          find('[for="radioTotal"]').click
          puts "Entrou no primeiro if!!!!!!!!!!!!!!!!!!!!!!"
        end
        puts "passou do primeiro if !!!!!!!!!!!!!!!!"
    
        #   campo_energia = expect(find('[for="radioElevado"]'))
        #   puts campo_energia
        #   if campo_energia == true
        #     find('[for="radioElevado"]').click
        #     puts "Entrou no Segundo if!!!!!!!!!!!!!!!!!!!!!!"
        #   end
        #   puts "passou do Segundo if !!!!!!!!!!!!!!!!"
    end

    def cadastro_dados_empregador
    #Dados empregador
    find('span[id="TabDadosEmpregador"]').click
    find('input[id="DadosEmpregador_CampoLinha1"]').set 'Teste automacao Razao relogio'
    find('input[id="DadosEmpregador_CampoLinha1Endereco"]').set 'Teste automacao endereco relogio'
    end

    def cadastro_tipo_leitura
    #Tipo Leitura
    find('span[id="TabTipoLeitura"]').click
    #v 2 de 5 Dimep
        find('div[id="DivMenuV2de5dimep"]').click
        find('[for="checkHabilitaV2de5dimep"]').click
        find('input[id="textboxDigitsV2de5dimepInformacao"]').set '1'
        find('input[id="textboxDigitsV2de5dimepIgnorar"]').set '2'
        find('input[id="textboxDigitsV2de5dimepChecagem"]').set '3'
        find('input[id="textboxDigitsV2de5dimepInformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsV2de5dimepNumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoV2de5intercalado"]').text).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click


    #v 2 de 5 intercalado
        find('div[id="DivMenuV2de5intercalado"]').click
        find('[for="checkHabilitaV2de5intercalado"]').click
        find('input[id="textboxDigitsV2de5intercaladoInformacao"]').set '1'
        find('input[id="textboxDigitsV2de5intercaladoIgnorar"]').set '2'
        find('input[id="textboxDigitsV2de5intercaladoChecagem"]').set '3'
        find('input[id="textboxDigitsV2de5intercaladoInformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsV2de5intercaladoNumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoV2de5intercalado"]').text).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click

    #Criptografia
        find('div[id="DivMenuCriptografia"]').click
        find('[for="radio8Digitos"]').click
        find('input[id="ConfiguracaoREP.Vetor1"]').set '1'
        find('input[id="ConfiguracaoREP.Verificador1"]').set '2'
        find('input[id="ConfiguracaoREP.Vetor2"]').set '3'
        find('input[id="ConfiguracaoREP.Verificador2"]').set '4'

    #v 3 de 9
        find('div[id="DivMenuV3de9"]').click
        find('[for="checkHabilitaV3de9"]').click
        find('input[id="textboxDigitsV3de9Informacao"]').set '1'
        find('input[id="textboxDigitsV3de9Ignorar"]').set '2'
        find('input[id="textboxDigitsV3de9Checagem"]').set '3'
        find('input[id="textboxDigitsV3de9InformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsV3de9NumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoV3de9"]').text).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click

    #Magnético Dimep
        find('div[id="DivMenuMagneticoDimep"]').click
        find('[for="checkHabilitaMagnetico"]').click
        find('input[id="textboxDigitsMagneticoInformacao"]').set '1'
        find('input[id="textboxDigitsMagneticoIgnorar"]').set '2'
        find('input[id="textboxDigitsMagneticoChecagem"]').set '3'
        find('input[id="textboxDigitsMagneticoInformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsMagneticoNumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoMagnetico"]').value).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click
        find('[for="checkFormatoMagneticoEspecial1"]').click

    #ABA
        find('div[id="DivMenuAba"]').click
        find('[for="checkHabilitaABA"]').click
        find('input[id="textboxDigitsABAInformacao"]').set '1'
        find('input[id="textboxDigitsABAIgnorar"]').set '2'
        find('input[id="textboxDigitsABAChecagem"]').set '3'
        find('input[id="textboxDigitsABAInformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsABANumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoABA"]').value).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click
        find('[for="checkFormatoABAEspecial1"]').click

    #Wiegand
        find('div[id="DivMenuWiegand"]').click
        find('[for="checkHabilitaWiegand"]').click
        find('input[id="textboxDigitsWiegandInformacao"]').set '1'
        find('input[id="textboxDigitsWiegandIgnorar"]').set '2'
        find('input[id="textboxDigitsWiegandChecagem"]').set '3'
        find('input[id="textboxDigitsWiegandInformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsWiegandNumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoWiegand"]').value).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click

    #Wiegand 32
        find('div[id="DivMenuWiegand32"]').click
        find('[for="checkHabilitaWiegand32"]').click

    #Wiegand 34
        find('div[id="DivMenuWiegand34"]').click
        find('[for="checkHabilitaWiegand34"]').click
        find('input[id="textboxDigitsWiegand34Informacao"]').set '1'
        find('input[id="textboxDigitsWiegand34Ignorar"]').set '2'
        find('input[id="textboxDigitsWiegand34Checagem"]').set '3'
        find('input[id="textboxDigitsWiegand34InformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsWiegand34NumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoWiegand34"]').value).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click

    #Wiegand 35
        find('div[id="DivMenuWiegand35"]').click
        find('[for="checkHabilitaWiegand35"]').click
        find('input[id="textboxDigitsWiegand35Informacao"]').set '1'
        find('input[id="textboxDigitsWiegand35Ignorar"]').set '2'
        find('input[id="textboxDigitsWiegand35Checagem"]').set '3'
        find('input[id="textboxDigitsWiegand35InformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsWiegand35NumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoWiegand35"]').value).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click

    #Wiegand 37
        find('div[id="DivMenuWiegand37"]').click
        find('[for="checkHabilitaWiegand37"]').click
        find('input[id="textboxDigitsWiegand37Informacao"]').set '1'
        find('input[id="textboxDigitsWiegand37Ignorar"]').set '2'
        find('input[id="textboxDigitsWiegand37Checagem"]').set '3'
        find('input[id="textboxDigitsWiegand37InformacaoOpcional"]').set '4'
        find('input[id="textboxDigitsWiegand37NumeroDaVia"]').set '5'
        find('input[value="Informação com"]').click
        find('input[value="Ignorar Dígito com"]').click
        find('input[value="Checagem com"]').click
        find('input[value="Informação Opcional com"]').click
        find('input[value="Número da Via com"]').click
        # expect(find('input[id="ConfiguracaoREP.FormatoCartaoWiegand37"]').value).to have_content "IXXCCCOOOOVVVVV"
        # find('input[value="Limpar"]').click

    #Smart Card
    find('div[id="DivMenuSmartCard"]').click
    find('[for="checkHabilitaSmartCard"]').click
    find('input[id="textboxDigitsSmartCardInformacao"]').set '1'
    find('input[id="textboxDigitsSmartCardIgnorar"]').set '2'
    find('input[id="textboxDigitsSmartCardChecagem"]').set '3'
    find('input[id="textboxDigitsSmartCardInformacaoOpcional"]').set '4'
    find('input[id="textboxDigitsSmartCardNumeroDaVia"]').set '5'
    find('input[value="Informação com"]').click
    find('input[value="Ignorar Dígito com"]').click
    find('input[value="Checagem com"]').click
    find('input[value="Informação Opcional com"]').click
    find('input[value="Número da Via com"]').click
    # expect(find('input[id="ConfiguracaoREP.FormatoCartaoSmartCard"]').value).to have_content "IXXCCCOOOOVVVVV"
    # find('input[value="Limpar"]').click
    end

end