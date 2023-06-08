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

    def logon_ambiente_br()
        fill_in 'LogOnModel_UserName', with: $user
        fill_in 'LogOnModel_Password', with: $senha
        find('button[id="btnFormLogin"]').click 
    end

    def logon_ambiente_md()
        fill_in 'LogOnModel_UserName', with: $user
        fill_in 'LogOnModel_Password', with: $senha
        find('button[id="btnFormLogin"]').click 
    end

    def logon_ambiente_pt()
        fill_in 'LogOnModel_UserName', with: $user
        fill_in 'LogOnModel_Password', with: $senha
        find('button[id="btnFormLogin"]').click 
    end

    def logon_ambiente_mx()
        fill_in 'LogOnModel_UserName', with: $user
        fill_in 'LogOnModel_Password', with: $senha
        find('input[id="btnFormLogin"]').click 
    end

end