Dado('que acesso a pagina inicial') do
    print "Teste 1"
    sleep 10
end

Então('deverá logar com sucesso na empresa e apresentar a razão social da empresa {string}') do |razao_social|
    expect(find('div[class="TabMenuNomeEmpresa shortText"]')).to have_content razao_social
  end