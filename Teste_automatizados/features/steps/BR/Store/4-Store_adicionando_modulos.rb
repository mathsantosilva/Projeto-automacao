Dado('acesso a tela de licença ativa') do
    find('a[style="font-weight: bold"]', text: 'Licenças').click
    find('a[href^="/store/License/Index/"]', text: 'Ativa').click
end

Quando('pesquiso a empresa e vou em gerenciar modulos extras') do

    @dados_empresa_cnpj = @common.consultar_empresa_criada_cnpj
    @dados_empresa_razao = @common.consultar_empresa_criada_razao
    fill_in 'Search', with: @dados_empresa_cnpj
    find('span[class="input-group-addon"]').click
    @path_pesquisa = current_path
    expect(find('table[class="table-bordered table-striped"] tbody tr td:nth-child(3)')).to have_content @dados_empresa_razao
    find('div[class="btn-group"] a[class="dropdown-toggle"]').click
    find('a[href^="/store/License/Modules/"]').click
end

Quando('adiciono os modulos na empresa e salvo') do
    @resources.adicionando_modulos($modulos_empresa)
    @path_atual =  current_path
    find('input[class="btn btn-success"]').click
    @validadores.validar_permanencia_pagina(@path_atual)
end

Então('deverá adicionar os modulos com sucesso e demonstrar a mensagem {string}') do |message_sucess|
    @common.validar_troca_pagina(@path_pesquisa)
    expect(find('div[class="alert alert-success"] div div')).to have_content message_sucess
end
  