class Common

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    # Navegação pelas opções do select de Definições 
    def nav_def(text, text2, value)
        sleep 5
        selecionar = find('div[id="toggleUserDefinitions"]')
        selecionar.hover
        #Primeiro clique no menu para abrir as opções
        find('span[class="togglesSpan"]', text: text).click
        #Segundo clique que direciona para a pagina
        find('div[class="pointer DropDownHeaderElement"]', text: text2).click
        #Terceiro clique no botão novo cadastro
        find(value).click
    end

    # Navegação pelas opções do select de Modulos
    def nav_mod(text)
        sleep 5
        selecionar = find('span[id="toogleModulos"]')
        selecionar.hover
        find('div[class="pointer DropDownHeaderElement"]', text: text).click
    end

    # Navegação pelas opções do select do App
    def nav_app(text)
        sleep 5
        selecionar = find('span[id="toogleUserName"]')
        selecionar.hover
        find('div[class="pointer DropDownHeaderElement"]', text: text).click
    end

    #acessando botao dentro de um table
    def select_button(elemento, button)
        @buscar = find(elemento)
        @buscar.hover
        find(button).click
  
    end

    def select_list_table(texto,button)
        @item = find('tr > td', text: texto)
        @item.hover
        find(button).click
    end

    def selecionar_primeira_ocorrencia()
        item = find('#MainTable > tbody > tr:nth-child(1) > td:nth-child(1) > div > label')
        item.click
    end

    #Clicando no botao para confirmar a remoção da filial
    def confir_remover()
        find('span[class="PlusButton pointer"]', text: 'Remover').click
    end

    #Removendo Chat da tela
    def remove_chat()
        script_remove_chat = '$(".dt-chat-widget").attr("style", "display: none");'
        page.execute_script(script_remove_chat)
    end

    #Clicando no botão salvar
    def botao_salvar_geral()
        drop = find('div[class="Conteudo"] div[style="clear: both"] input:nth-child(1)')
        drop.click
    end

    #Clicando no botão cancelar
    def botao_cancelar()
        drop = find("div[style='margin-top: 30px; clear: both'] input[class='cancelarOperacao']")
        drop.click
        find('span[class="PlusButton pointer"]', text: 'Confirmar').click
    end

    #Clicando no botão salvar
    def botao_salvar_config_relogio()
        drop = find('input[type="submit"][value="Salvar"]', match: :first)
        drop.click
    end

    def botao_salvar_config_relogio_mx()
        drop = find('input[type="submit"][value="Grabar"]', match: :first)
        drop.click
    end

    def gravar_arquivo_dados_empresa(email,cnpj,razao)
        File.open("./arquivos_testes/ListaEmpresasCriadas.txt", 'a+') do |f|
            f.write("Razão_Social: " +  razao + " | " +  "CNPJ/CPF: " + cnpj + " | " + "Email: " + email + " | "+ "Host: " + current_host + "\n" )
        end
    end

    def inserir_cookie_sessao()
        if (current_path.downcase) == '/store/admin'
            browser = Capybara.current_session.driver.browser
            browser.manage.add_cookie name: ".ASPXFORMSAUTHSTORE", value: $cookie_store, same_site: "Lax", http_only: true
            refresh 
        end
        
          if (current_path.downcase) == '/dimep/account/logon'
            browser = Capybara.current_session.driver.browser
            browser.manage.add_cookie name: "ASP.NET_SessionId", value:$cookie_kairos_sessionid, Max_Age: '240', secure: true
            browser.manage.add_cookie name: ".AspNet.Cookies", value: $cookie_aspnet, http_only: true, secure: true
            visit @page
          end
    end

    def inserir_cookie_local()
        if (current_path.downcase) == '/dimep/account/logon'
            browser = Capybara.current_session.driver.browser
            browser.execute_script("window.localStorage.setItem('appKairos', true)")
            visit @page
        end
    end

    def inserir_colunas(campos, todos)
        linha = 0
        linha_marc = 0
        linha_val = 0
        alfabeto = ('a'..'zz').to_a
        campos_length = campos.length
        for campo in campos do
            separar = campo[0].split(/(\d+)/)
            campo_key = separar[0]
            campo_value = campo[1]

            # Adicionar nova coluna
            find('a[data-bind="click: AddNewItemCampo"] ').click

            # Adicionar a descrição(Somente as 3 primeiras letras)
            find("tr[id=\"linha_#{linha}\"] input[name=\"Campos[#{linha}].Descricao\"]", visible: false).click
            find("tr[id=\"linha_#{linha}\"] input[name=\"Campos[#{linha}].Descricao\"]", visible: false).set(linha.to_s + ' - ' + campo_key[0..2] + ' - ' + campo_value[0..2])
            case campo_key
            when 'Ocorrência'
                tipo_subs = 'IdOcorrencia'
            when 'Informações de Empresa'
                tipo_subs = 'IdInformacaoEmpresa'
            when 'Informações de Funcionário'
                tipo_subs = 'IdInformacaoFuncionario'
            when 'Data'
                tipo_subs = 'Formato'
            when 'Fórmula'
                tipo_subs = 'Formula'
            else
                tipo_subs = 'Id' + campo_key.to_s
            end

            select(campo_key.to_s, from: "Campos[#{linha}].TipoCampoRelatorioPersonalizado")

            if campo_key == "Marcação"
                find("div#Campos_#{linha}__TiposMarcacao_chzn > ul.chzn-choices > li.search-field").click
                find("li#Campos_#{linha}__TiposMarcacao_chzn_o_#{linha_marc}").click
                linha_marc = contador_incre(linha_marc)
            elsif campo_key.to_s == "Fórmula" 
                puts "Formula"
                find("input[name=\"Campos[#{linha}].Formula\"]").set("a+b+c+d")
                select(campo_value.to_s, from: "Campos[#{linha}].FormatoCampo")
            elsif campo_key.to_s != 'Horário' && campo_key.to_s != 'Justificativa Edição de Ponto'
               select(campo_value.to_s, from: "Campos[#{linha}].#{tipo_subs}")
            end

            # Adiciona todos os campos de visualização (Valor, descrição, codigo)
            if todos == true
                if campo_key.to_s == 'Ocorrência'
                    begin
                        caixa_visualizacao = find("div#Campos_#{linha}__OpcoesVisualizacaoOcorrencia_chzn", wait: 1)
                    rescue
                        caixa_visualizacao = ""
                    end

                    if caixa_visualizacao 
                        find("div#Campos_#{linha}__OpcoesVisualizacaoOcorrencia_chzn").click
                        find("li#Campos_#{linha}__OpcoesVisualizacaoOcorrencia_chzn_o_0").click
                    end
                elsif campo_key.to_s != "Marcação" && campo_key.to_s != "Horário" && campo_key.to_s != "Justificativa Edição de Ponto" && campo_key.to_s != "Informações de Empresa" && campo_key.to_s != "Informações de Funcionário" && campo_key.to_s != "Fórmula"
                    begin
                        caixa_visualizacao = find("div#Campos_#{linha}__OpcoesVisualizacao_chzn", wait: 1)
                    rescue
                        caixa_visualizacao = ""
                    end
                    if caixa_visualizacao != ""
                        (0..1).each do |n|
                            find("div#Campos_#{linha}__OpcoesVisualizacao_chzn").click
                            find("li#Campos_#{linha}__OpcoesVisualizacao_chzn_o_#{n}").click
                        end
                    end
                end
            end

            # Vai adicionando uma letra a cada caixa de variavel que encontra
            if campo_key.to_s != "Marcação" && campo_key.to_s != "Horário" && campo_key.to_s != "Justificativa Edição de Ponto" && campo_key.to_s != "Informações de Empresa" && campo_key.to_s != "Informações de Funcionário" && campo_key.to_s != "Fórmula"
                begin
                    caixa_variavel = find("input[name=\"Campos[#{linha}].Variavel\"]", wait: 1)
                rescue
                    caixa_variavel = ""
                end
                if caixa_variavel != ""
                    find("input[name=\"Campos[#{linha}].Variavel\"]").set(alfabeto[linha_val])
                    letras = "#{letras}#{alfabeto[linha_val]}"
                    letras = "#{letras}+"
                    linha_val = contador_incre(linha_val)
                end
            end
            linha = contador_incre(linha)
            porcent = (linha/campos_length)*100
            puts "Porcentagem de progresso: #{porcent}%"
        end
    end

    def selecionar_opcoes(contador_linhas, names, itens)
        linha = contador_linhas.to_s
        incre = 0
        find('tr[id="linha_'+ linha +'"]  a[class="search-choice-close"]').click
        for num in itens do
            find('div[id="Campos_'+ linha +'__OpcoesVisualizacao_chzn"]').click
            find('div[id="Campos_'+ linha +'__OpcoesVisualizacao_chzn"] input[value="Opções de visualização..."]').set(names[num])
            find('div[id="Campos_'+ linha +'__OpcoesVisualizacao_chzn"] li[class="active-result highlighted"] ', visible: false).click
            incre += 1
        end

    end

    def contador_incre(contador_linhas)
        contador_linhas += 1
        return contador_linhas
    end

    def fechar_popup()
        begin 
            elemento = find('[class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable ui-dialog-css"]', wait: 5)
        rescue
            return
        end
        if elemento
            find('[id="closeModal"]', wait: 10).click
        else
            return
        end
    end

end
