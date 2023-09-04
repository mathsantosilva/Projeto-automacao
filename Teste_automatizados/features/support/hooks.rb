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
  # Instanciando as Classes
  @login = Login.new
  @complements = Complements.new
  @cadastros = Cadastros.new
  @common = Common.new
  @validadores = Validadores.new
  @consultores = Consultores.new
  @store = Store.new
  @obrigatorio = Obrigatorios.new
  @cadastros_relogios = Cadastros_relogios.new
  @cadastro_empresa = Cadastro_empresa.new
  @resources = Resources.new
end

After do |scenario|

  if scenario.failed?
    # Setando o nome das pastas
    screenshots_folder = 'screenshots'
    scenario_folder = scenario.name

    # Verifica se as pastas existem e a cria se necessário
    Dir.mkdir(screenshots_folder) unless File.directory?(screenshots_folder)
    Dir.mkdir("#{screenshots_folder}/#{scenario_folder}") unless File.directory?(scenario_folder)
        
    # Capturar a screenshot aqui e salva na pasta correspondente
    screenshot_name = "error_#{Time.now.strftime('%Y-%m-%d-%H%M')}.png"
    page.save_screenshot(File.join("#{screenshots_folder}/#{scenario_folder}", screenshot_name))
    puts "Screenshot capturada: #{screenshot_name}"
  end
end