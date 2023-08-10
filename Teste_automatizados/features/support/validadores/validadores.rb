class Validadores
    
    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def validando_css(value, css)
        find(value).to have_css(css)
    end

    # Valida se trocou da tela em que estava 
    def validar_troca_pagina(url)
        while true do
            if current_path == url
                break
            else
                next 
            end
        end
    end

    # Valida se ainda esta tela em que estava 
    def validar_permanencia_pagina(url)
        while true do
            if (current_path) != url
                break
            else
                next 
            end
        end
    end

    # Utiliza Regex para identificar numeros CNPJ com/sem pontuação
    def validar_cnpj(valor)
        if valor.match(%r{([0-9]{2}\.?[0-9]{3}\.?[0-9]{3}/?[0-9]{4}-?[0-9]{2})})
            true
        else
            false
        end
    end

    # Utiliza Regex para identificar numeros CPF com/sem pontuação
    def validar_cpf(valor)
        if valor.match(/([0-9]{3}\.?[0-9]{3}\.?[0-9]{3}-?[0-9]{2})/)
            true
        else
            false
        end
    end

    def validar_nome_Campos(valor_campos)
        result = []
        contador = 0
        buscar_campos = "$('div.Conteudo div.labelFormEdit:visible').text()"
        campos_da_pagina = page.evaluate_script(buscar_campos)
        campos_labels = campos_da_pagina.split(':')
        for p in campos_labels do
            result.push(p + ':')
          end
        valor_campos.each do |labels|
            expect(result[contador]).to eql labels
            contador += 1
        end
    end

    def validar_mensagem_campos(valor_resource)
        valor_resource.each do |mensagem|
            expect(page).to have_content mensagem
        end
    end

end