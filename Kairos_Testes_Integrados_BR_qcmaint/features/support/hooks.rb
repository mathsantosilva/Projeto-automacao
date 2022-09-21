require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'webdrivers'
require 'common/cadastros_empresas'
require 'common/campos_obrigatorios'
require 'common/resources'
require 'common/cadastros_relogios'

Before do

  $user_br = 'teste124234@dimep.com.br' #Qcdev = automacao@madis.com.br = automacao@dimep.com.br = automacao@dimep.pt = automacao@dimep.com.mx
  $user_es = 'automacao@dimep.com.es'
  $user_pt = 'automacao@dimep.com.pt'
  $user_en = 'automacao@dimep.com.en'
  $senha = '1'
  page.current_window.maximize
  @page = 'http://qcmaint.dimepkairos.com.br/'
  @ambiente = 'Dimep'
  visit @page


  # Instanciando as Classes 
  @resources = Resources.new
  @login = Login.new
  @common = Common.new
  @complements = Complements.new
  @cadastros = Cadastros.new
  @obrigatorio = Obrigatorios.new
  @cadastros_relogios = Cadastros_relogios.new

  
end

  After do |scenario|
    
  end