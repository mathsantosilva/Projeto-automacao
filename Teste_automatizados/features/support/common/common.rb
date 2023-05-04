class Common

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    #executando a navegacao das paginas
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

    def nav_mod(text)
        sleep 5
        selecionar = find('span[id="toogleModulos"]')
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

    def selecionarprimeiraocorrencia
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

    def validando_css(value, css)
        find(value).to have_css(css)
    end

    #Clicando no botão salvar
    def botaosalvar_geral
        drop = find('div[style="margin-top: 30px; clear: both"]  input[class="guardar"]')
        drop.click
    end

    #Clicando no botão cancelar
    def botaocancelar
        drop = find("div[style='margin-top: 30px; clear: both'] input[class='cancelarOperacao']")
        drop.click
        find('span[class="PlusButton pointer"]', text: 'Confirmar').click
    end

    #Clicando no botão salvar
    def botaosalvar_config_relogio
        drop = find('input[type="submit"][value="Salvar"]', match: :first)
        drop.click
    end

    def botaosalvar_config_relogio_mx
        drop = find('input[type="submit"][value="Grabar"]', match: :first)
        drop.click
    end

    # obtem os dados da primeira empresa da lista
    def obterdadosempresa
        $codigoPrimeiraEmpresa = find('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(1) > td:nth-child(1)', match: :first).text
        $razaoPrimeiraEmpresa = find('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(1) > td:nth-child(2)', match: :first).text
        $cnpjPrimeiraEmpresa = find('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(1) > td:nth-child(3)', match: :first).text
        $cpfQuartaEmpresa = find('body > div.ZonaConteudo > div.Conteudo > table > tbody > tr:nth-child(4) > td:nth-child(3)', match: :first).text
    end

    def consultar_empresa_criada_razao
        File.open("arquivos_testes/ListaEmpresasCriadas.txt", 'r') do |f|
            leitura = f.readlines
            tam = leitura.count
            linha = leitura[tam -1]
            linha_cortade = linha.split('|')
            razao_sujo = linha_cortade[0].split(':')
            razao_social = razao_sujo[1].strip
            f.close
            return razao_social
        end
    end

    def consultar_empresa_criada_cnpj
        File.open("arquivos_testes/ListaEmpresasCriadas.txt", 'r') do |f|
            leitura = f.readlines
            tam = leitura.count
            linha = leitura[tam -1]
            linha_cortade = linha.split('|')
            cnpj_sujo = linha_cortade[1].split()
            numero_cnpj = cnpj_sujo[1]
            f.close
            return numero_cnpj
        end
    end

    def consultar_empresa_criada_email
        File.open("arquivos_testes/ListaEmpresasCriadas.txt", 'r') do |f|
            leitura = f.readlines
            tam = leitura.count
            linha = leitura[tam -1]
            linha_cortade = linha.split('|')
            email_sujo = linha_cortade[2].split()
            email_empresa = email_sujo[1]
            f.close
            return email_empresa
        end
    end

    def gravar_arquivo_dados_empresa(email,cnpj,razao)
        File.open("./arquivos_testes/ListaEmpresasCriadas.txt", 'a+') do |f|
            f.write("Razão_Social: " +  razao + " | " +  "CNPJ/CPF: " + cnpj + " | " + "Email: " + email + " | "+ "Host: " + current_host + "\n" )
        end
    end

    def validar_troca_pagina(url)
        while true do
            if current_path == url
                break
            else
                next 
            end
        end
    end

    def validar_permanencia_pagina(url)
        while true do
            if (current_path) != url
                break
            else
                next 
            end
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
end
