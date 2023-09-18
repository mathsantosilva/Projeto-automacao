class Arquivos

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        # Importar a classes para utilizar
        require_relative '../common/complements'
        require_relative '../common/common'

        @complements = Complements.new
        @common = Common.new
    end

    def escrever(caminho, itens, nome)
        for item in itens do
            File.open("#{caminho}/#{nome}", 'a+') do |f|
                f.write("#{item} \n")
            end
        end
    end
end