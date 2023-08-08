require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'webdrivers'


Before do
  Selenium::WebDriver.logger.output = 'arquivos_testes/selenium.log'
  $user_br = #Inserir aqui email de acesso dos ambientes
  $user_es = #Inserir aqui email de acesso dos ambientes
  $user_pt = #Inserir aqui email de acesso dos ambientes
  $user_en = #Inserir aqui email de acesso dos ambientes
  $senha = '1'
  Capybara.app_host = #Inserir aqui a URL do ambientes acessado
  @ambiente = # Inserir aqui o ambiente que o testes rodara 
  @projeto = # Inserir aqui o prjeto que o testes rodara
  $cookie_store = # Inserir aqui o valor do cookie de sessão da store
  $cookie_kairos_sessionid = # Inserir aqui o cookie de sessão da aplicação
  $cookie_aspnet = # Inserir aqui o cookie de sessão da aplicação 
  page.current_window.maximize
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

