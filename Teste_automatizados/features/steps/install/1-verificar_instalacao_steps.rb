Então('pego a URL e faço um print dela no console') do
    url = current_path
    puts url
  end
  
  Então('a url deverá ser igual a pretendida {string}') do |path|
    @validadores.validar_page_loading
    url = current_path
    expect(current_path).to eql path
  end