Dado('que acesso a tela de login em {string} no ambiente BR') do |path|
    visit path
    # Realiza login
    @login.logon_ambiente_geral
    @common.fechar_popup
    @common.inserir_cookie_local
end