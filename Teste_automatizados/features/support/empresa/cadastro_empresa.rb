class Cadastro_empresa

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        require_relative '../common/complements'
        require_relative '../common/common'
    end

    def cadastro_empresa_rfc_mx(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new

            
            
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
            @common.botao_salvar_geral
            @validadores.validar_permanencia_pagina('/Dimep/Empresas/Create')
            
            cod = cod + 1
            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_cadastro_empresa_rfc_mx
        script_insere_prompt = '$(function funcao1()
        {
        var vezes = prompt("Quantas vezes deseja repetir o looping: ");
        $(".DefinitionsTitle").text(vezes);
        })'
        page.execute_script(script_insere_prompt)
        sleep 25
        element = find("label[class='DefinitionsTitle']")
        max = element.text
        print('Ira repetir o cadastro ' << max.to_s << ' vezes' << '\n')
        cadastro_empresa_rfc_mx(max)
    end

    def cadastro_empresa_cnpj_br(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new

            
            
            # Entrando na criacao de empresa
            fill_in 'Empresa_Codigo', with: $codigo_aleatorio
            fill_in 'Empresa_CEI', with: '294226088484'
            fill_in 'Empresa_Telefone', with: '116541954654'
            find('label[for="CbUtilizaPortaria"]', visible: true)
            fill_in 'Empresa_RazaoSocial', with: 'Empresa Br - Automação de testes - ' << $time.to_s << " - Looping: " << cod.to_s
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
            @common.botao_salvar_geral
            @validadores.validar_permanencia_pagina('/Dimep/Empresas/Create')

            cod = cod + 1
            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_cadastro_empresa_cnpj_br
        script_insere_prompt = '$(function funcao1()
        {
        var vezes = prompt("Quantas vezes deseja repetir o looping: ");
        $(".DefinitionsTitle").text(vezes);
        })'
        page.execute_script(script_insere_prompt)
        sleep 25
        element = find("label[class='DefinitionsTitle']")
        max = element.text
        print('Ira repetir o cadastro ' << max.to_s << ' vezes' << '\n')
        cadastro_empresa_cnpj_br(max)
    end

    def cadastro_empresa_cpf_br(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new

            
            
            # Entrando na criacao de empresa
            fill_in 'Empresa_Codigo', with: $codigo_aleatorio
            fill_in 'Empresa_CEI', with: '294226088484'
            fill_in 'Empresa_Telefone', with: '116541954654'
            find('label[for="CbUtilizaPortaria"]', visible: true)
            fill_in 'Empresa_RazaoSocial', with: 'Empresa Br - Automação de testes - ' << $time.to_s << " - Looping: " << cod.to_s
            find('label[for="rdCnpj"]').click
            fill_in 'Empresa_CnpjCpf', with: $cpf
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
            @common.botao_salvar_geral
            @validadores.validar_permanencia_pagina('/Dimep/Empresas/Create')

            cod = cod + 1
            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_cadastro_empresa_cpf_br
        script_insere_prompt = '$(function funcao1()
        {
        var vezes = prompt("Quantas vezes deseja repetir o looping: ");
        $(".DefinitionsTitle").text(vezes);
        })'
        page.execute_script(script_insere_prompt)
        sleep 25
        element = find("label[class='DefinitionsTitle']")
        max = element.text
        print('Ira repetir o cadastro ' << max.to_s << ' vezes' << '\n')
        cadastro_empresa_cpf_br(max)
    end

    def cadas_filiais(max)
        num = 0
        cod = 1
        while num < max.to_i do
            @complements = Complements.new
            @common = Common.new
            
            

            cadas_emp_filial()

            @common.botaosalvar

            num = num + 1

            if num < max.to_i
                find('label[class="pointer"]').click
            end
        end
    end

    def looping_filiais
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
        cadas_filiais(max)
    end


end