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
  $user_br = 'teste198652@dimep.com.br'
  $user_es = 'automacao@dimep.com.es'
  $user_pt = 'automacao@dimep.com.pt'
  $user_en = 'automacao@dimep.com.en'
  $senha = '1'
  page.current_window.maximize
  @page = 'https://qcmaint.dimepkairos.com.br/store/Admin'
  @ambiente = 'Dimep'
  visit @page

  if (current_path.downcase) == '/store/admin'
    browser = Capybara.current_session.driver.browser
    browser.manage.add_cookie name: ".ASPXFORMSAUTHSTORE", value: "E94C1FCA461CF3882D973319D67B91A7A74B28D2A5E6CB6308C69CBAC0216EFB7391ABD3A99F9F661AA598C5168F1A250075602A708FE17E28A102568BB3AAE377835ED56327BD9EDB6A00AD51088102CA1CD61934783BAE34CE87FCDD568403735FADE1A6C76195DF96A10EA187101D04B753CE", same_site: "Lax", http_only: true
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