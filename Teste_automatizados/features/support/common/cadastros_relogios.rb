require 'common\complements'
require 'common\common'

class Cadastros_relogios

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    @complements = Complements.new
    @common = Common.new

    @complements.varcommon
    @complements.varcadastro

    def cadastro_cod_repetido_config_relog_DRep()

        find('label[class="pointer"]').click
    
        find('label[for="radioModelo29"]').click
        fill_in 'Codigo', with: '1234'
        fill_in 'Descricao', with: 'Codigo repetido'
        select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option

    end

    def cadastro_cod_repetido_config_relog_DRep_2()

        find('label[class="pointer"]').click
    
        find('label[for="radioModelo29"]').click
        fill_in 'Codigo', with: '1234'
        fill_in 'Descricao', with: $text_aleatorio
        select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option

    end

    def cadastro_cod_repetido_config_relog_madis_DRep()

        find('label[class="pointer"]').click
    
        find('label[for="radioModelo30"]').click
        fill_in 'Codigo', with: '1234'
        fill_in 'Descricao', with: 'Codigo repetido'
        select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option

    end

    def cadastro_cod_repetido_config_relog_pt_DRep()

        find('label[class="pointer"]').click
    
        find('label[for="radioModelo29"]').click
        fill_in 'Codigo', with: '1234'
        fill_in 'Descricao', with: 'Codigo repetido'
        select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option

    end

    def cadastro_cod_repetido_config_relog_mx_DRep()

        find('label[class="pointer"]').click
    
        find('label[for="radioModelo29"]').click
        fill_in 'Codigo', with: '1234'
        fill_in 'Descricao', with: 'Codigo repetido'
        select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option

    end


    def cadastro_descr_repetida_config_relog_DRep()

        find('label[class="pointer"]').click
    
        find('label[for="radioModelo29"]').click
        fill_in 'Codigo', with: $codigo_aleatorio
        fill_in 'Descricao', with: 'Descrição repetida'
        select('6,9', from: 'ConfiguracaoREP_NivelSegurancaFacialVisica').select_option

    end


    def cadastro_relog_mod_DRep()

        select('D-REP', from: 'DdlModeloId').select_option
        select('Relogio D Rep 2022-06-29 15:30:02 -0300', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '10062021'
        fill_in 'Relogio_FimHorarioVerao', with: '11092021'
        fill_in 'Relogio_CPF', with: $cpf
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

    end

    def cadastro_relog_madis_mod_DRep()

        select('MD5715P', from: 'DdlModeloId').select_option
        select('MD5715P', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '10062021'
        fill_in 'Relogio_FimHorarioVerao', with: '11092021'
        fill_in 'Relogio_CPF', with: $cpf
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

    end

    def cadastro_relog_pt_mod_DRep()

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '10062021'
        fill_in 'Relogio_FimHorarioVerao', with: '11092021'
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

    end

    def cadastro_relog_mx_mod_DRep()

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '10062021'
        fill_in 'Relogio_FimHorarioVerao', with: '11092021'
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

    end

    def cadastro_relog_mod_DRep_carac_especiais()

        select('D-REP', from: 'DdlModeloId').select_option
        select('Relogio D Rep 2022-06-29 15:30:02 -0300', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_Descricao', with: '"!@#$%¨&*()_we' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '"!@#$%¨&*()_we'
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_FimHorarioVerao', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_CPF', with: '"!@#$%¨&*()_we'
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click
        sleep 2

        expect(page.assert_selector('input.input-validation-error', count: 1))

        expect(page).to have_content 'Por favor adicione um Código'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

    end

    def cadastro_relog_madis_mod_DRep_carac_especiais()

        select('MD5715P', from: 'DdlModeloId').select_option
        select('MD5715P', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_Descricao', with: '"!@#$%¨&*()_we' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '"!@#$%¨&*()_we'
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_FimHorarioVerao', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_CPF', with: '"!@#$%¨&*()_we'
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click
        sleep 2

        expect(page.assert_selector('input.input-validation-error', count: 1))

        expect(page).to have_content 'Por favor adicione um Código'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

    end

    def cadastro_relog_pt_mod_DRep_carac_especiais()

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_Descricao', with: '"!@#$%¨&*()_we' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '"!@#$%¨&*()_we'
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_FimHorarioVerao', with: '"!@#$%¨&*()_we'
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click
        sleep 2

        expect(page.assert_selector('input.input-validation-error', count: 1))

        expect(page).to have_content 'O Código tem que ser superior a zero'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

    end

    def cadastro_relog_mx_mod_DRep_carac_especiais()

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_Descricao', with: '"!@#$%¨&*()_we' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '"!@#$%¨&*()_we'
        select('UTC -4', from: 'Relogio_FusoHorarioId').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '"!@#$%¨&*()_we'
        fill_in 'Relogio_FimHorarioVerao', with: '"!@#$%¨&*()_we'
        find('label[for="checkLogMonitoracao"]', visible: false).set(true)

        drop = find("input[type=button][value='Grabar']", match: :first)
        drop.click
        sleep 2

        expect(page.assert_selector('input.input-validation-error', count: 1))

        expect(page).to have_content 'El código tiene que ser superior a cero'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio

        drop = find("input[type=button][value='Grabar']", match: :first)
        drop.click

    end
    

    def alterando_relog_mod_DRep()

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -1', from: 'Relogio_FusoHorarioId').select_option
        fill_in 'Relogio_InicioHorarioVerao', with: '10062022'
        fill_in 'Relogio_FimHorarioVerao', with: '11092022'
        fill_in 'Relogio_CPF', with: $cpf

    end

    def alterando_relog_madis_mod_DRep()

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -1', from: 'Relogio_FusoHorarioId').select_option
        fill_in 'Relogio_InicioHorarioVerao', with: '10062022'
        fill_in 'Relogio_FimHorarioVerao', with: '11092022'
        fill_in 'Relogio_CPF', with: $cpf

    end

    def alterando_relog_pt_mod_DRep()

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -1', from: 'Relogio_FusoHorarioId').select_option
        fill_in 'Relogio_InicioHorarioVerao', with: '10062022'
        fill_in 'Relogio_FimHorarioVerao', with: '11092022'

    end

    def alterando_relog_mx_mod_DRep()

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'Relogio D Rep' + ' ' + $time.to_s
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2
        select('UTC -1', from: 'Relogio_FusoHorarioId').select_option
        fill_in 'Relogio_InicioHorarioVerao', with: '10062022'
        fill_in 'Relogio_FimHorarioVerao', with: '11092022'

    end

    def cadastro_relog_mod_DRep_val_limite()

        fill_in 'Relogio_Codigo', with: '111100'
        fill_in 'Relogio_Descricao', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '1111111111111111100'
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '0101175300'
        fill_in 'Relogio_FimHorarioVerao', with: '0101175300'
        fill_in 'Relogio_CPF', with: '1111111111100'

    end

    def cadastro_relog_mod_DRep_val_limite_pt()

        fill_in 'Relogio_Codigo', with: '111100'
        fill_in 'Relogio_Descricao', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '1111111111111111100'
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '0101175300'
        fill_in 'Relogio_FimHorarioVerao', with: '0101175300'

    end

    def cadastro_relog_mod_DRep_val_limite_mx()

        fill_in 'Relogio_Codigo', with: '111100'
        fill_in 'Relogio_Descricao', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '1111111111111111100'
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Relogio_InicioHorarioVerao', with: '0101175300'
        fill_in 'Relogio_FimHorarioVerao', with: '0101175300'

    end

    def cadastro_relog_mod_DRep_informacoes_iguais()

        find('label[class="pointer"]').click

        select('D-REP', from: 'DdlModeloId').select_option
        select('Relogio D Rep 2022-06-29 15:30:02 -0300', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'
        fill_in 'Relogio_CPF', with: '11111111111'

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(find('div[class=validation-summary-ok]')).to have_content 'O Relógio foi adicionado com sucesso'

    end

    def cadastro_relog_mod_DRep_informacoes_iguais_2()

        find('label[class="pointer"]').click

        select('D-REP', from: 'DdlModeloId').select_option
        select('Relogio D Rep 2022-06-29 15:30:02 -0300', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'
        fill_in 'Relogio_CPF', with: '11111111111'

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 2))

        expect(page).to have_content 'Já existe um Relógio com essa descrição'
        expect(page).to have_content 'Já existe um Relógio com o código inserido'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais' + ' ' + $time.to_s

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 1))

        expect(page).to have_content 'Já existe um Relógio com o Número de Fabricação inserido.'

        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

    end

    def cadastro_relog_madis_mod_DRep_informacoes_iguais()

        find('label[class="pointer"]').click

        select('MD5715P', from: 'DdlModeloId').select_option
        select('MD5715P', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'
        fill_in 'Relogio_CPF', with: '11111111111'

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(find('div[class=validation-summary-ok]')).to have_content 'O Relógio foi adicionado com sucesso'

    end

    def cadastro_relog_madis_mod_DRep_informacoes_iguais_2()

        find('label[class="pointer"]').click

        select('MD5715P', from: 'DdlModeloId').select_option
        select('MD5715P', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'
        fill_in 'Relogio_CPF', with: '11111111111'

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 2))

        expect(page).to have_content 'Já existe um Relógio com essa descrição'
        expect(page).to have_content 'Já existe um Relógio com o código inserido'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais' + ' ' + $time.to_s

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 1))

        expect(page).to have_content 'Já existe um Relógio com o Número de Fabricação inserido.'

        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

    end

    def cadastro_relog_pt_mod_DRep_informacoes_iguais()

        find('label[class="pointer"]').click

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(find('div[class=validation-summary-ok]')).to have_content 'O Relógio foi criado com sucesso'

    end

    def cadastro_relog_pt_mod_DRep_informacoes_iguais_2()

        find('label[class="pointer"]').click

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 2))

        expect(page).to have_content 'Já existe um Relógio com essa descrição'
        expect(page).to have_content 'Já existe um Relógio com o código inserido'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais' + ' ' + $time.to_s

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 1))

        expect(page).to have_content 'Já existe um Relógio com o Número de Fabricação inserido.'

        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2

        drop = find("input[type=button][value='Salvar']", match: :first)
        drop.click

    end

    def cadastro_relog_mx_mod_DRep_informacoes_iguais()

        find('label[class="pointer"]').click

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'

        drop = find("input[type=button][value='Grabar']", match: :first)
        drop.click

        expect(find('div[class=validation-summary-ok]')).to have_content 'El Reloj fue creado con éxito'

    end

    def cadastro_relog_mx_mod_DRep_informacoes_iguais_2()

        find('label[class="pointer"]').click

        select('D-REP', from: 'DdlModeloId').select_option
        select('D REP', from: 'DdlConfiguracaoId').select_option
        fill_in 'Relogio_Codigo', with: '1234'
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais'
        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: '69696969696969696'

        drop = find("input[type=button][value='Grabar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 2))

        expect(page).to have_content 'Ya existe un Reloj con esa descripción'
        expect(page).to have_content 'Ya existe un Reloj con código insertado'

        fill_in 'Relogio_Codigo', with: $codigo_aleatorio
        fill_in 'Relogio_Descricao', with: 'teste informacoes iguais' + ' ' + $time.to_s

        drop = find("input[type=button][value='Grabar']", match: :first)
        drop.click

        expect(page.assert_selector('div.field-validation-error', count: 1))

        expect(page).to have_content 'Ya existe un Reloj con Número de Fabricación insertado.'

        fill_in 'Relogio_NumeroFabricacaoSemMinimo', with: $codigo_aleatorio_2

        drop = find("input[type=button][value='Grabar']", match: :first)
        drop.click

    end

end