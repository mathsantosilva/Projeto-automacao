class Cadastros

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    @complements = Complements.new
    @common = Common.new

    #Alterando empresas filiais
    def alter_emp_filial()

        fill_in 'Filial_Codigo', with: $codigo_aleatorio
        fill_in 'Filial_Telefone', with: '999999999'
        fill_in 'Filial_Descricao', with: $nome_empresa_aleatoria + ' ' + $time.to_s
        fill_in 'Filial_CnpjCpf', with: $cnpj
        fill_in 'Filial_Endereco', with: $endereco_aleatorio
        fill_in 'Filial_Cidade', with: $cidade_aleatoria
        fill_in 'Filial_Bairro', with: 'Vila Borges'
        fill_in 'Filial_UF', with: 'SP'
        fill_in 'Filial_Pais', with: $pais_aleatorio
        fill_in 'Filial_URL', with: 'http://filial.com.br'
        fill_in 'Filial_Email', with: $email_aleatorio
        select('UTC -3', from: 'Filial_FusoHorario_Id').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        # fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        # fill_in 'Filial_FimHorarioVerao', with: '11092021'
        fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
        fill_in 'Filial_DataLimiteTratamentoPonto', with: '10042021'
        fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria

    end

    #Cadastro de empresas filiais
    def cadas_emp_filial ()

        find('label[class="pointer"]').click

        fill_in 'Filial_Codigo', with: $codigo_aleatorio
        fill_in 'Filial_Telefone', with: '999999999'
        fill_in 'Filial_Descricao', with: $nome_empresa_aleatoria + ' ' + $time.to_s
        fill_in 'Filial_CnpjCpf', with: $cnpj
        fill_in 'Filial_Endereco', with: $endereco_aleatorio
        fill_in 'Filial_Cidade', with: $cidade_aleatoria
        fill_in 'Filial_Bairro', with: 'Vila Borges'
        fill_in 'Filial_UF', with: 'SP'
        fill_in 'Filial_Pais', with: $pais_aleatorio
        fill_in 'Filial_URL', with: 'http://filial.com.br'
        fill_in 'Filial_Email', with: $email_aleatorio
        select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        fill_in 'Filial_FimHorarioVerao', with: '11092021'
        fill_in 'Filial_DataPrevisaoProximoFechamento', with: '11032021'
        fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
        fill_in 'ConnectChave_ChaveConnect', with: $chave_aleatoria

    end

    #Cadastro de empresas filiais com caracteres especiais
    def cadas_emp_filial_especiais ()

        find('label[class="pointer"]').click

        fill_in 'Filial_Codigo', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_Telefone', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_Descricao', with: '"!@#$%¨&*()_we' + ' ' + $time.to_s
        fill_in 'Filial_CnpjCpf', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_Endereco', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_Cidade', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_Bairro', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_UF', with: '$0'
        fill_in 'Filial_Pais', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_URL', with: '"!@#$%¨&*()_we'
        fill_in 'Filial_Email', with: '"!@#$%¨&*()_we"!@#$%¨&*()_we.com'
        select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        fill_in 'Filial_FimHorarioVerao', with: '11092021'
        fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
        fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
        fill_in 'ConnectChave_ChaveConnect', with: '"!@#$%¨&*()_we'

        drop = find("input[type=submit][value='Salvar']", match: :first)
        drop.click
        sleep 2

        expect(page.assert_selector('input.input-validation-error', count: 4))

        expect(page).to have_content 'Por favor adicione um código'
        expect(page).to have_content 'Por favor introduza um telefone'
        expect(page).to have_content 'Por favor introduza um CNPJ/CPF'
        expect(page).to have_content 'Email inválido'

        fill_in 'Filial_Codigo', with: $codigo_aleatorio
        fill_in 'Filial_Telefone', with: '999999999'
        fill_in 'Filial_CnpjCpf', with: $cnpj
        fill_in 'Filial_Email', with: $email_aleatorio

        drop = find("input[type=submit][value='Salvar']", match: :first)
        drop.click

        expect(find('div[class=validation-summary-ok]')).to have_content 'A Filial foi criada com sucesso'
        
    end

    #Cadastro de empresas filiais valores limites
    def cadas_emp_filial_val_limites ()

        find('label[class="pointer"]').click

        fill_in 'Filial_Codigo', with: $codigo_aleatorio
        fill_in 'Filial_Telefone', with: '1111111111111111111100'
        fill_in 'Filial_Descricao', with: 'Teste valores limites'
        fill_in 'Filial_CnpjCpf', with: $cnpj
        fill_in 'Filial_Endereco', with: $endereco_aleatorio
        fill_in 'Filial_Cidade', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Filial_Bairro', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Filial_UF', with: 'xxooo'
        fill_in 'Filial_Pais', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Filial_URL', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'
        fill_in 'Filial_Email', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.comooo'
        select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        fill_in 'Filial_FimHorarioVerao', with: '11092021'
        fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
        fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
        fill_in 'ConnectChave_ChaveConnect', with: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxooo'

        drop = find("input[type=submit][value='Salvar']", match: :first)
        drop.click
        sleep 2

        expect(find('div[class=validation-summary-ok]')).to have_content 'A Filial foi criada com sucesso'

    end

    # def cadas_emp_cod_fixo()

        #fill_in 'Filial_Codigo', with: '1533'
        #fill_in 'Filial_Telefone', with: '999999999'
        #fill_in 'Filial_Descricao', with: 'Empresa com codigo igual' + ' ' + $time.to_s
        #fill_in 'Filial_CnpjCpf', with: $cnpj
        #fill_in 'Filial_Endereco', with: $endereco_aleatorio
        #fill_in 'Filial_Cidade', with: $cidade_aleatoria
        #fill_in 'Filial_Bairro', with: 'Vila Borges'
        #fill_in 'Filial_UF', with: 'SP'
        #fill_in 'Filial_Pais', with: $pais_aleatorio
        #fill_in 'Filial_URL', with: 'http://filial.com.br'
        #fill_in 'Filial_Email', with: $email_aleatorio
        #select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
        #find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        #fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        #fill_in 'Filial_FimHorarioVerao', with: '11092021'
        #fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
        #fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
        #fill_in 'ConnectChave_ChaveConnect', with: 'jkl471<>¨&*!$'

        #drop = find("input[type=submit][value='Salvar']", match: :first)
        #drop.click
        #sleep 2

        #expect(find('div[class=validation-summary-ok]')).to have_content 'A Filial foi criada com sucesso'

    # end


    def cadas_emp_cod_repetido()
         
        fill_in 'Filial_Codigo', with: '1533'
        fill_in 'Filial_Telefone', with: '999999999'
        fill_in 'Filial_Descricao', with: 'Empresa com codigo igual' + ' ' + $time.to_s
        fill_in 'Filial_CnpjCpf', with: $cnpj
        fill_in 'Filial_Endereco', with: $endereco_aleatorio
        fill_in 'Filial_Cidade', with: $cidade_aleatoria
        fill_in 'Filial_Bairro', with: 'Vila Borges'
        fill_in 'Filial_UF', with: 'SP'
        fill_in 'Filial_Pais', with: $pais_aleatorio
        fill_in 'Filial_URL', with: 'http://filial.com.br'
        fill_in 'Filial_Email', with: $email_aleatorio
        select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        fill_in 'Filial_FimHorarioVerao', with: '11092021'
        fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
        fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
        fill_in 'ConnectChave_ChaveConnect', with: 'jkl471<>¨&*!$'

        drop = find("input[type=submit][value='Salvar']", match: :first)
        drop.click
        sleep 2

        expect(find('div[class=field-validation-error]')).to have_content 'Já existe uma Filial com o código inserido'

    end

    # def cadas_emp_cnpj_fixo()

    #     fill_in 'Filial_Codigo', with: $codigo_aleatorio
    #     fill_in 'Filial_Telefone', with: '999999999'
    #     fill_in 'Filial_Descricao', with: 'Empresa com CNPJ igual' + ' ' + $time.to_s
    #     fill_in 'Filial_CnpjCpf', with: '82596418000178'
    #     fill_in 'Filial_Endereco', with: $endereco_aleatorio
    #     fill_in 'Filial_Cidade', with: $cidade_aleatoria
    #     fill_in 'Filial_Bairro', with: 'Vila Borges'
    #     fill_in 'Filial_UF', with: 'SP'
    #     fill_in 'Filial_Pais', with: $pais_aleatorio
    #     fill_in 'Filial_URL', with: 'http://filial.com.br'
    #     fill_in 'Filial_Email', with: $email_aleatorio
    #     select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
    #     find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
    #     fill_in 'Filial.InicioHorarioVerao', with: '10062021'
    #     fill_in 'Filial_FimHorarioVerao', with: '11092021'
    #     fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
    #     fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
    #     fill_in 'ConnectChave_ChaveConnect', with: 'jkl471<>¨&*!$'
   
    #     drop = find("input[type=submit][value='Salvar']", match: :first)
    #     drop.click
    #     sleep 2
   
    #     expect(find('div[class=validation-summary-ok]')).to have_content 'A Filial foi criada com sucesso'

    # end


    def cadas_emp_cnpj_repetido()

        fill_in 'Filial_Codigo', with: $codigo_aleatorio
        fill_in 'Filial_Telefone', with: '999999999'
        fill_in 'Filial_Descricao', with: 'Empresa com CNPJ igual' + ' ' + $time.to_s
        fill_in 'Filial_CnpjCpf', with: '82596418000178'
        fill_in 'Filial_Endereco', with: $endereco_aleatorio
        fill_in 'Filial_Cidade', with: $cidade_aleatoria
        fill_in 'Filial_Bairro', with: 'Vila Borges'
        fill_in 'Filial_UF', with: 'SP'
        fill_in 'Filial_Pais', with: $pais_aleatorio
        fill_in 'Filial_URL', with: 'http://filial.com.br'
        fill_in 'Filial_Email', with: $email_aleatorio
        select('UTC -10', from: 'Filial_FusoHorario_Id').select_option
        find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
        fill_in 'Filial.InicioHorarioVerao', with: '10062021'
        fill_in 'Filial_FimHorarioVerao', with: '11092021'
        fill_in 'Filial_DataPrevisaoProximoFechamento', with: '10032021'
        fill_in 'Filial_DataLimiteTratamentoPonto', with: '11042021'
        fill_in 'ConnectChave_ChaveConnect', with: 'jkl471<>¨&*!$'
   
        drop = find("input[type=submit][value='Salvar']", match: :first)
        drop.click
        sleep 2
   
        expect(find('div[class=field-validation-error]')).to have_content 'Já existe uma Empresa com o CNPJ/CPF inserido'

    end

    
    def cadas_obras(max, cod)
        num = 0
        while num < max.to_i do
            find('i[class="fa fa-plus"]').click
            fill_in 'Codigo', with: $codigo_aleatorio + cod
            fill_in 'Descricao', with: "Obra" + " " + cod.to_s
            fill_in 'Observacoes', with: $text_aleatorio
            find('label[for="SolicitaAprovacaoHoras"]', visible: false).click
            find('label[for="SomenteGestoresVisualiza"]', visible: false).click
            find('input[type="submit"]').click
            cod = cod +1
            num = num +1
        end
    end

    def looping_obras
        print("Quantas vezes deseja repetir o looping: ")
        max = $stdin.gets.strip
        print("Iniciar o codigo em qual numero: ")
        cod = $stdin.gets.strip
        cadas_obras(max, cod.to_i)
    end

    def cadastro_empresa_mx(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new

            @complements.varcommon
            @complements.varcadastro
            # Entrando na criacao de empresa
            fill_in 'Empresa_Codigo', with: $codigo_aleatorio
            fill_in 'Empresa_Telefone', with: '116541954654'
            fill_in 'Empresa_RazaoSocial', with: 'Empresa Br - Automação de testes - ' << $time.to_s << " - Looping: " << cod.to_s
            fill_in 'Empresa_CnpjCpf', with: $rfc
            select('EXTRACCION DE MINERALES METALIFEROS', from: 'Empresa_RamoAtividade_Id').select_option
            fill_in 'Empresa_Endereco', with: $endereco_aleatorio
            fill_in 'Empresa_Cidade', with: $cidade_aleatoria
            fill_in 'Empresa_Pais', with: $pais_aleatorio
            fill_in 'Empresa_URL', with: $url_aleatoria
            fill_in 'Empresa_Email', with: $email_aleatorio
            select('15', from: 'Empresa_NrMaxDigitosParaMatriculaDelEmpleado').select_option
            fill_in 'Empresa_AnoAperturaNomina', with: $data_ano_atual
            fill_in 'Empresa_DataAbertura', with: $data_inicio_ano
            select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
            find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
            fill_in 'Empresa_InicioHorarioVerao', with: $data_inicio_verao
            fill_in 'Empresa_FimHorarioVerao', with: $data_fim_verao
            fill_in 'Empresa_DataPrevisaoProximoFechamento', with: $data_fim_ano
            fill_in 'Empresa_DataLimiteTratamentoPonto', with: $data_fim_ano
            fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria
            @common.botaosalvar_geral
            @common.validar_permanencia_pagina('/Dimep/Empresas/Create')
            
            cod = cod + 1
            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_empresas_mx
        script_insere_prompt = '$(function funcao1()
        {
        var vezes = prompt("Quantas vezes deseja repetir o looping: ");
        $(".DefinitionsTitle").text(vezes);
        })'
        page.execute_script(script_insere_prompt)
        sleep 20
        element = find("label[class='DefinitionsTitle']")
        max = element.text
        print('Ira repetir o cadastro ' << max.to_s << ' vezes')
        cadastro_empresa_mx(max)
    end

    def cadastro_empresa_br(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new

            @complements.varcommon
            @complements.varcadastro
            # Entrando na criacao de empresa
            fill_in 'Empresa_Codigo', with: $codigo_aleatorio
            fill_in 'Empresa_CEI', with: '294226088484'
            fill_in 'Empresa_Telefone', with: '116541954654'
            find('label[for="CbUtilizaPortaria"]', visible: true)
            fill_in 'Empresa_RazaoSocial', with: 'Empresa Br - Automação de testes - ' << $time.to_s << ' ' << cod.to_s
            find('label[for="rdCnpj"]').click
            fill_in 'Empresa_CnpjCpf', with: $cnpj
            select('INDÚSTRIAS EXTRATIVAS', from: 'Empresa_RamoAtividade_Id').select_option
            fill_in 'Empresa_Endereco', with: $endereco_aleatorio
            fill_in 'Empresa_Bairro', with: $bairro_aleatorio
            fill_in 'Empresa_Cidade', with: $cidade_aleatoria
            fill_in 'Empresa_UF', with: $estado_aleatorio
            fill_in 'Empresa_Pais', with: $pais_aleatorio
            fill_in 'Empresa_URL', with: $url_aleatoria
            fill_in 'Empresa_Email', with: $email_aleatorio
            fill_in 'Empresa_DataAbertura', with: '01012021'
            select('UTC - 12', from: 'Empresa_FusoHorario_Id').select_option
            find('label[for="checkHabilitaHorarioVerao"]', visible: false).set(true)
            fill_in 'Empresa_InicioHorarioVerao', with: '10032021'
            fill_in 'Empresa_FimHorarioVerao', with: '10052021'
            fill_in 'Empresa_DataPrevisaoProximoFechamento', with: '10052021'
            fill_in 'Empresa_DataLimiteTratamentoPonto', with: '10072021'
            fill_in 'connectChave_ChaveConnect', with: $chave_aleatoria

            @common.botaosalvar

            cod = cod + 1
            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_empresas_br
        print("Quantas vezes deseja repetir o looping: ")
        max = $stdin.gets.strip
        print('Ira repetir o cadastro ' << max.to_s << 'vezes')
        cadastro_empresa_br(max)
    end

    def cadas_filiais(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new
            @complements.varcommon
            @complements.varcadastro

            cadas_emp_filial()

            @common.botaosalvar

            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_filiais
        print("Quantas vezes deseja repetir o looping: ")
        max = $stdin.gets.strip
        print('Ira repetir o cadastro: ' << max.to_s)
        cadas_filiais(max)
    end
end