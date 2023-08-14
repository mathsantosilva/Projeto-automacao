class Consultores

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        # Importar a classes para utilizar
        require_relative '../validadores/validadores'
        require_relative '../common/common'

        # Instanciar classes necessarias
        @validadores = Validadores.new
        @common = Common.new
    end

    def consulta_acessa_empresa_codigo(codigo)
        contador = 1
        while true
            caminho = "table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(1)"
            valor_td = find(caminho).text()
            if valor_td == codigo
                @common.select_button(caminho, 'span[class="pointer spanButton"]')
                break
            else
                contador += 1
                next
            end
        end
    end

    # Acessa a primeira empresa que encontrar com CNPJ - De baixo para cima
    def consulta_acessa_empresa_cnpj()
        contador = 1
        while true
            caminho = "table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(3)"
            valor_td = find(caminho).text()
            correto = @validadores.validar_cnpj(valor_td)
            if correto
                @common.select_button(caminho, 'span[class="pointer spanButton"]')
                break
            else
                contador += 1
                next
            end
        end
    end

    # Acessa a primeira empresa que encontrar com CPF - De baixo para cima
    def consulta_acessa_empresa_cpf()
        contador = 1
        while true
            caminho = "table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(3)"
            valor_td = find(caminho).text()
            correto = @validadores.validar_cpf(valor_td)
            if correto
                @common.select_button(caminho, 'span[class="pointer spanButton"]')
                break
            else
                contador += 1
                next
            end
        end
    end

    # Obtem os dados da empresa do arquivo de empresa criadas
    def consulta_arquivo_empresa_criada_razao()
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

    # Obtem os dados da empresa do arquivo de empresa criadas
    def consultar_arquivo_empresa_criada_cnpj()
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

    # Obtem os dados da empresa do arquivo de empresa criadas
    def consultar_arquivo_empresa_criada_email()
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

    # Obtem os dados da primeira empresa que usar um cnpj - De de cima para baixa
    def consulta_guarda_dados_empresa_cnpj()
        contador = 1
        while true
            caminho = "table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(3)"
            valor_td = find(caminho).text()
            correto = @validadores.validar_cnpj(valor_td)
            if correto
                $codigo_Empresa_Cnpj = find("table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(1)").text
                $razao_Empresa_Cnpj = find("table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(2)").text
                $cnpj_Empresa = find("table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(3)").text
                break
            else
                contador += 1
                next
            end
        end
    end

    # Obtem os dados da primeira empresa que usar um cpf - De de cima para baixa
    def consulta_guarda_dados_empresa_cpf()
        contador = 1
        while true
            caminho = "table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(3)"
            valor_td = find(caminho).text()
            correto = @validadores.validar_cpf(valor_td)
            if correto
                $codigo_Empresa_Cpf = find("table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(1)").text
                $razao_Empresa_Cpf = find("table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(2)").text
                $cpf_Empresa = find("table[class='ContentTable'] tbody tr:nth-last-child(#{contador}) td:nth-child(3)").text
                break
            else
                contador += 1
                next
            end
        end
    end

end