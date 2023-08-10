Dado('que acesso as obras cadsatradas') do
    # Realiza login
    @login.logon_ambiente_br
    # Acessando a empresa pela navegacao de telas
    @common.nav_mod('Obras')
    # Carrega as variaveis utilizadas nas spec
    
    
end

Quando('inicio a exclusão') do

    within('table[class="ContentTable"]') do
        itens = find("tbody > tr").size
        puts itens
    end

end

Então('deverá remover corretamente todas as obras') do

end