Dado('que acesso a tela de login em {string} no ambiente BR') do |path|
    visit path
    # Realiza login
    sleep 15
    @login.logon_ambiente_geral
    @validadores.validar_permanencia_pagina(path)
    @common.fechar_popup
    @validadores.validar_page_loading
  end