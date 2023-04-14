class Obrigatorios

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    #Campos obrigatorios na criação de empresas
    def camp_obrig_empresas()

        find('label[class="pointer"]').click
        drop = find("input[type=submit][value='Salvar']", match: :first)
        drop.click
        
        expect(page.assert_selector('input.input-validation-error', count: 9))

        expect(page).to have_content 'Por favor adicione um código'
        expect(page).to have_content 'Por favor introduza um telefone'
        expect(page).to have_content 'Por favor introduza uma razão social'
        expect(page).to have_content 'Por favor introduza um CNPJ/CPF'
        expect(page).to have_content 'Por favor introduza um endereço'
        expect(page).to have_content 'Por favor introduza uma cidade'
        expect(page).to have_content 'Por favor introduza o dia de abertura do período.'
        expect(page).to have_content 'Por favor introduza um bairro'
        expect(page).to have_content 'Por favor introduza um UF'

    end

    #Campos obrigatórios na criação de filiais
    def camp_obrig_filiais()
        
        expect(page.assert_selector('input.input-validation-error', count: 8))

        expect(page).to have_content 'Por favor adicione um código'
        expect(page).to have_content 'Por favor introduza um telefone'
        expect(page).to have_content 'Por favor introduza uma razão social'
        expect(page).to have_content 'Por favor introduza um CNPJ/CPF'
        expect(page).to have_content 'Por favor introduza um endereço'
        expect(page).to have_content 'Por favor introduza uma cidade'
        expect(page).to have_content 'Por favor introduza um bairro'
        expect(page).to have_content 'Por favor introduza um UF'

    end

    def verificacao_campos_filiais()

        expect(find('#Filial_Telefone').value).to eql('11111111111111111111')
        expect(find('#Filial_Cidade').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Filial_Bairro').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Filial_UF').value).to eql('xx')
        expect(find('#Filial_Pais').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Filial_URL').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Filial_Email').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com')
        expect(find('#ConnectChave_ChaveConnect').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')

    end

    def camp_obrig_config_relog()

        expect(page.assert_selector('input.input-validation-error', count: 2))

        expect(page).to have_content 'Por favor adicione um código'
        expect(page).to have_content 'Por favor adicione uma descrição'

    end

    def camp_obrig_config_relog_pt()

        expect(page.assert_selector('input.input-validation-error', count: 2))

        expect(page).to have_content 'Por favor introduza um código'
        expect(page).to have_content 'Por favor introduza uma descrição'

    end

    def camp_obrig_config_relog_mx()

        expect(page.assert_selector('input.input-validation-error', count: 2))

        expect(page).to have_content 'Favor introduzca un código'
        expect(page).to have_content 'Por favor introduzca una descripción'

    end

    def camp_obrig_cadastro_relog_DRep()

        expect(page.assert_selector('span.field-validation-error', count: 5))

        expect(page).to have_content 'Por favor adicione um Código'
        expect(page).to have_content 'Por favor adicione uma descrição'
        expect(page).to have_content 'Cadastrar uma configuração de equipamento para o modelo selecionado'
        expect(page).to have_content 'Por favor adicione um CPF'
        expect(page).to have_content 'Preencha o número de fabricação do relógio com 17 digitos'

    end

    def camp_obrig_cadastro_relog_DRep_pt()

        expect(page.assert_selector('span.field-validation-error', count: 4))

        expect(page).to have_content 'O Código tem que ser superior a zero'
        expect(page).to have_content 'Por favor introduza uma descrição'
        expect(page).to have_content 'Cadastrar uma configuração de equipamento para o modelo selecionado'
        expect(page).to have_content 'Preencha o número de fabricação do relógio com 17 digitos'

    end

    def camp_obrig_cadastro_relog_DRep_mx()

        expect(page.assert_selector('span.field-validation-error', count: 4))

        expect(page).to have_content 'El código tiene que ser superior a cero'
        expect(page).to have_content 'Por favor introduzca una descripción'
        expect(page).to have_content 'Publicar una configuración de equipo para el modelo seleccionado'
        expect(page).to have_content 'Rellene el número de reloj de fabricación con 17 dígitos'

    end

    def verificacao_campos_cadastro_relog_mod_DRep()

        expect(find('#Relogio_Codigo').value).to eql('1111')
        expect(find('#Relogio_Descricao').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Relogio_NumeroFabricacaoSemMinimo').value).to eql('11111111111111111')
        expect(find('#Relogio_InicioHorarioVerao').value).to eql('01/01/1753')
        expect(find('#Relogio_FimHorarioVerao').value).to eql('01/01/1753')
        expect(find('#Relogio_CPF').value).to eql('111.111.111-11')

    end

    def verificacao_campos_cadastro_relog_mod_DRep_pt()

        expect(find('#Relogio_Codigo').value).to eql('1111')
        expect(find('#Relogio_Descricao').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Relogio_NumeroFabricacaoSemMinimo').value).to eql('11111111111111111')
        expect(find('#Relogio_InicioHorarioVerao').value).to eql('01/01/1753')
        expect(find('#Relogio_FimHorarioVerao').value).to eql('01/01/1753')

    end

    def verificacao_campos_cadastro_relog_mod_DRep_mx()

        expect(find('#Relogio_Codigo').value).to eql('1111')
        expect(find('#Relogio_Descricao').value).to eql('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
        expect(find('#Relogio_NumeroFabricacaoSemMinimo').value).to eql('11111111111111111')
        expect(find('#Relogio_InicioHorarioVerao').value).to eql('01/01/1753')
        expect(find('#Relogio_FimHorarioVerao').value).to eql('01/01/1753')

    end

end