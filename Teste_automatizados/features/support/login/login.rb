class Login

    include Capybara::DSL
    include RSpec::Matchers 

    def logar(user, password)
        fill_in 'LogOnModel_UserName', with: user
        fill_in 'LogOnModel_Password', with: password
        find('button[id="btnFormLogin"]').click
    end

    def logon_ambiente_geral()
        fill_in 'LogOnModel_UserName', with: $user
        fill_in 'LogOnModel_Password', with: $senha
        find('[id="btnFormLogin"]').click 
    end
end