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
  Capybara.app_host = 'http://qcdev.dimepkairos.com.br/'
  @ambiente = 'Dimep'
  $cookie_store = '34AE4A11F7C6659D344345D0711FE227D9233B5ECF26712965A4DFE99350B3B75BD13A0C537101F9EDC01157491265903904EE6999CF76DEF17C2A5872CBF1B14E92719403A14EE33911275480994724D55718D710378918682FCDFCF3BE93EE84E10D72274B1782208897DE1139189DEC704C07'
  $cookie_kairos_sessionid = 'rcn1yosinjg4r4wxg21b5m0e'
  $cookie_aspnet = 'DoDCPhlgS457t2CO9-srqCgtDZMvCj2NzSmseHBbBiaZmX56ypsqPwr02dI31anZnOWfYedg3bHr60T7baLp5CHcmivhmdJsZbA8Bxnm98JGRfEmEBr3wuEiCyfm9TDq045uyL4DB8dugxqDKO95WtnrYhCaHuEf1sq5x1RNK-72MK2Kd5QDmXR_cN61KpA9l90HUvdh0Oa6HubMjY4RMOqMfSc4iFn6TH40rdSotAsEOb8YmFE-m65WIIGrpDEtUuGOjlgE8gML_JyFoWqOPWJ8C3j7W2MvgP9V5AIS4-IG_mOybncH03g_OZ7EfyETUBLVOA'

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

