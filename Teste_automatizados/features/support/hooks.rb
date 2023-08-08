require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'webdrivers'
require 'json'

context do
  dados = File.new("./features/support/dados.json", "r")
  file = File.read(dados)
  $data_hash = JSON.parse(file)
  $user = $data_hash['dados_user']['login']
  $senha = $data_hash['dados_user']['senha']
  Capybara.app_host = $data_hash['dados_user']['url']
  $ambiente = $data_hash['dados_user']['ambiente']
  $cookie_store = $data_hash['cookies'][0]['valor']
  $cookie_kairos_sessionid = $data_hash['cookies'][1]['valor']
  $cookie_aspnet = $data_hash['cookies'][2]['valor']
end

Before do
  puts "seila"
  # Instanciando as Classes
  @login = Login.new
  @complements = Complements.new
  @cadastros = Cadastros.new
  @common = Common.new
  @obrigatorio = Obrigatorios.new
  @cadastros_relogios = Cadastros_relogios.new
  @resources = Resources.new
end



After do |scenario|
  if scenario.failed?
    path = "html-report/#{scenario.__id__}.html"
    page.driver.browser.save_screenshot(path)
    attach(path, "image/png")
  end
end