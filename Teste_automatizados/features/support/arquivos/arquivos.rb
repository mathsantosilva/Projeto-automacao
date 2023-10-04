class Arquivos

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        # Importar a classes para utilizar
    end

    def escrever(caminho, nome, itens)
        lista_itens = Array.new
        if itens.class == String || itens.class == Integer
            lista_itens.push(itens)
        else
            for n in itens do
                lista_itens.push(n)
            end
        end
        for item in lista_itens do
            File.open("#{caminho}/#{nome}", 'a+') do |f|
                f.write("#{item} \n")
            end
        end
    end
end