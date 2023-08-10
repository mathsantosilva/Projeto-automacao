class Store

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

    def adicionando_modulos(valor_campos)
        find('div[id="ModuleSelect_chosen"]').click
        valor_campos.each do |campos|
            find('div[id="ModuleSelect_chosen"]  ul[class="chosen-choices"] li[class="search-field"] input').set campos
            find('li[class="active-result highlighted"]', text: campos).click
        end
    end

end