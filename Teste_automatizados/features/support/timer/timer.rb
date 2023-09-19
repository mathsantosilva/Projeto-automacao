class Validadores
    
    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        # Importar a classes para utilizar
        require_relative '../common/complements'
        require_relative '../arquivos/arquivos'

        # Instanciar classes necessarias
        @complements = Complements.new
        @arquivos = Arquivos.new
    end

end