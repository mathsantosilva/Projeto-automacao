require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'webdrivers'
require 'json'

context do
  puts "Aqui"
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
  puts "Ali"
end

Before do
  # Instanciando as Classes
  @login = Login.new
  @complements = Complements.new
  @cadastros = Cadastros.new
  @common = Common.new
  @validadores = Validadores.new
  @Consultores = Consultores.new
  @obrigatorio = Obrigatorios.new
  @cadastros_relogios = Cadastros_relogios.new
  @resources = Resources.new
end

After do |scenario|

end