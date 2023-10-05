class Tratar_dados

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        require_relative '../common/complements'
        require_relative '../common/common'
    end

    def limpar_string(string)
        while true
          if string.include? '.' 
            string.sub!(".", "")
          elsif string.include? '/'
            string.sub!("/", "")
          elsif string.include? '-'
            string.sub!("-", "")
          elsif string.include? ','
            string.sub!(",", "")
          else
            return string
          end
        end
      end

end