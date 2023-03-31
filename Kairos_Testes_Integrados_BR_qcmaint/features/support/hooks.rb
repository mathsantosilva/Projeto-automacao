require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'webdrivers'
require 'common/cadastros_empresas'
require 'common/cadastros_relogios'
require 'common/campos_obrigatorios'
require 'common/common'
require 'common/complements'
require 'common/resources'


Before do
  Selenium::WebDriver.logger.output = 'C:/Rspec/Kairos_Testes_Integrados_BR_qcmaint/arquivos_testes/selenium.log'
  $user_br = 'teste198652@dimep.com.br'
  $user_es = 'automacao@dimep.com.es'
  $user_pt = 'automacao@dimep.com.pt'
  $user_en = 'automacao@dimep.com.en'
  $senha = '1'
  page.current_window.maximize
  @page = 'https://www.dimepkairos.com.br/store/Admin'
  @ambiente = 'Dimep'
  visit @page

  if (current_path.downcase) == '/store/admin'
    browser = Capybara.current_session.driver.browser
    browser.manage.add_cookie name: ".ASPXFORMSAUTHSTORE", value: "E102DAA0E69FC3EB2905CD6ACFCB323E9B570FE454C3CDFE4B364D504D8E75112AC2A581D32475A3615DF23F0967811892B4BC4928623F2B95899A01C77E3919F26D2E22DBEC27683F5338EF4C76C4EA31E7290AAEACB299076A6AB05636B8764945D37EF5BD5EEB16B967E0EC8D08BF88F80D6D", same_site: "Lax", http_only: true
    refresh 
  end

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