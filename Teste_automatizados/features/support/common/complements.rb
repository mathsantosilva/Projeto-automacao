require 'faker'
require 'cpf_cnpj'

class Complements

    # Configura o Fake para o formato 'pt-BR'
    Faker::Config.locale = 'pt-BR'

    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
    include RSpec::Matchers

  def geradores_tempo
    $time = Time.new.strftime("%d-%m-%Y - %H%M")
    data_inicio_mes = Time.new.strftime("01%m%Y")
    $data_inicio_ano = Time.new.strftime("0101%Y")
    $data_ano_atual = Time.new.strftime("%Y")
    $data_inicio_verao = Time.new.strftime("1005%Y")
    $data_fim_verao = Time.new.strftime("1007%Y")
    $data_fim_ano = Time.new.strftime("3112%Y") 
  end

  def geradores_dados_documentos_empresa
    $cnpj = CNPJ.generate
    $cpf = CPF.generate
    $rfc = "mx" + (Faker::Number.number(digits: 13)).to_s
    $cei = Faker::Number.number(digits: 12)
    $razao_social_aleatoria = Faker::Company.name
  end

  def geradores_dados_internet
    $url_aleatoria = Faker::Internet.url
    $email_aleatorio = Faker::Internet.email
  end

  def geradores_dados_endereco
    $cep = Faker::Address.zip_code
    $endereco_aleatorio = Faker::Address.full_address
    $bairro_aleatorio = Faker::Address.secondary_address
    $estado_aleatorio = Faker::Address.state
    $cidade_aleatoria = Faker::Address.city
    $pais_aleatorio = Faker::Address.country
  end

  def geradores_dados_telefonia
    $codigo_area = Faker::PhoneNumber.area_code
    $telefone = Faker::PhoneNumber.cell_phone
  end
    
  def geradores_dados_cadastros
    $nome_aleatorio = Faker::Name.name
    $cpf = CPF.generate
  end

  def geradores_dados_numericos_aleatorios
    $codigo_aleatorio_10 = Faker::Number.number(digits: 10)
    $codigo_aleatorio_17 = Faker::Number.number(digits: 17)
    $chave_aleatoria = Faker::Crypto.md5
    $text_aleatorio = Faker::Lorem.sentence
  end
  
  def geradores_dados_texto_aleatorio
    $text_aleatorio = Faker::Lorem.sentence
  end
end