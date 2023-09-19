Dado('que acesso a tela de login em {string} no ambiente BR') do |path|
    visit path
    # Realiza login
    @common.inserir_cookie_local
    @login.logon_ambiente_geral
    @validadores.validar_permanencia_pagina(path)
    @common.fechar_popup
  end