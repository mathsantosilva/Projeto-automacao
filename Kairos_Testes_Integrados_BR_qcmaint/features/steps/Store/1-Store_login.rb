Dado('que acesso a tela de Login da store com o cookie já setado') do
  sleep 10
end

Então('deverá apresentar o nome do usuario logado {string}') do |text_element|
  expect(find('a[class="dropdown-toggle"]')).to have_text text_element
end