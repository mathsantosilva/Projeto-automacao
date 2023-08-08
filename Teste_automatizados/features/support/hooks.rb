require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'webdrivers'
require 'json'


file = File.read('C:/Repositorios/producao_br/Projeto-automacao/Teste_automatizados/features/support/dados.json')
data_hash = JSON.parse(file)

Before do
  $user = data_hash['dados_user']['login']
  $senha = data_hash['dados_user']['senha']
  Capybara.app_host = data_hash['dados_user']['url']
  @ambiente = data_hash['dados_user']['ambiente']
  $cookie_store = data_hash['cookies'][0]['valor']
  $cookie_kairos_sessionid = data_hash['cookies'][1]['valor']
  $cookie_aspnet = data_hash['cookies'][2]['valor']

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

end