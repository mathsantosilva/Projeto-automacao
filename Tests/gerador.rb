require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'fileutils'
require 'nif'
require 'benchmark'

def verifica_diretorio 
  if File.directory?(Dir.pwd + "/arquivos")
    puts "!!Pasta de arquivos já criada!!"
  else
    Dir.mkdir( Dir.pwd + "/arquivos")
    puts "!!Criada a pasta de arquivos!!"
  end
end

def gerador_de_arquivos(linhas,escolha,quant,lista)
  num = 0
  count = 0
  time = Time.new.strftime('%d-%m-%Y-%H-%M')
  nome = escolha + ' - ' << time.to_s
  while num < linhas.to_i
    case escolha
      when "CPF"
        text = CPF.generate
      when "CNPJ"
        text = CNPJ.generate
      when "NIF"
        text = Nif::Generator.generate
      when "NUM"
        text = Faker::Number.number(digits: quant).to_s
      when "PIS"
        text = lista[count].to_s
        count += 1
      when "CEI"
        text = lista[count].to_s
        count += 1
    end
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text + "\n")
    end
    num += 1
  end
end

def gerador_cei(linhas)
  escolha = "CEI"
  quant = 0
  fase2 = []
  # Fase 4 - Divisor
  divisor = 11

  basepis = []
  lista = []
  contador = 1


  linhas.to_i.times do
    n = 1
    n1 = 2 # numero diferente de zero
    n2 = Faker::Number.within(range: 0..9)
    n3 = Faker::Number.within(range: 0..9)
    n4 = Faker::Number.within(range: 0..9)
    n5 = Faker::Number.within(range: 0..9)
    n6 = Faker::Number.within(range: 0..9)
    n7 = Faker::Number.within(range: 0..9)
    n8 = Faker::Number.within(range: 0..9)
    n9 = Faker::Number.within(range: 0..9)
    n10 = Faker::Number.within(range: 0..9)
    n11 = 8

    etapa1 = (n1 * 7) + (n2 * 4) + (n3 * 1) + (n4 * 8) + (n5 * 5) + (n6 * 2) + (n7 * 1) + (n8 * 6) + (n9 * 3) + (n10 * 7) + (n11 * 4)
    etapa2 = etapa1.to_s 
    etapa3 = (etapa2[etapa2.length - 1]).to_i + (etapa2[etapa2.length - 2]).to_i
    etapa4 = ((10 - (etapa3 % 10 + (etapa3 / 10).floor) % 10) % 10).floor
    lista.append(n1.to_s + n2.to_s + n3.to_s + n4.to_s + n5.to_s + n6.to_s + n7.to_s + n8.to_s + n9.to_s + n10.to_s + n11.to_s + etapa4.to_s)
  end
    
  gerador_de_arquivos(linhas,escolha,quant,lista)
  @result = true
end

def gerador_cpf(linhas)
  quant = 0
  escolha = "CPF"
  lista = []
  gerador_de_arquivos(linhas,escolha,quant,lista)
  @result = true
end

def gerador_cnpj(linhas)
  quant = 0
  escolha = "CNPJ"
  lista = []
  gerador_de_arquivos(linhas,escolha,quant,lista)
  @result = true
end

def gerador_nif(linhas)
  quant = 0
  escolha = "NIF"
  lista = []
  gerador_de_arquivos(linhas,escolha,quant,lista)
  @result = true
end

def gerador_num(linhas)
  print('| Informe a quantidade de numeros por linhas: ')
  quant = $stdin.gets.strip.to_i

  if quant.to_i > 0 
    escolha = "NUM"
    lista = []
    gerador_de_arquivos(linhas,escolha,quant,lista)
  else
    @result = false
    return
  end
  @result = true
end

def gerador_pis(linhas)
  escolha = "PIS"
  quant = 0
  fase2 = []
  # Fase 4 - Divisor
  divisor = 11

  basepis = []
  lista = []
  contador = 1


  linhas.to_i.times do
    pos_alga = 0
    algarismopis = [3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    pis_gerado = ''
    fase2 = []

    numaleatorio = Faker::Number.number(digits: 10)
    basepis = numaleatorio.to_s.split('')
    # Fase 2 - multiplicação
    basepis.each do |pos|
      fase2.push(pos.to_i * algarismopis[pos_alga].to_i)
      pos_alga += 1
    end
    # Fase 3 - Soma
    fase3 = fase2.inject(:+)
    # Fase 5 - Divisão
    fase5 = fase3 / divisor
    # Fase 6 - Resto da Divisão
    fase6 = fase3.remainder(divisor)
    # Fase 7 - Validador
    if (divisor - fase6 == 10)
      fase7 = 0
    elsif (divisor - fase6 == 11)
      fase7 = 0
    else
      fase7 = divisor - fase6
    end
    # Fase 8 - montando o pis
    basepis.each do |pos|
      pis_gerado << pos.to_s
    end
    pis_gerado << fase7.to_s
    # Guardando os Pis gerados em um Array
    lista.push(pis_gerado)
  end
  # Fase 9 - Montando arquivo e escrevendo nele
  gerador_de_arquivos(linhas,escolha,quant,lista)
  @result = true
end

def escolha(opcao)
  print('| Informe a quantidade de registros(Linhas): ')
  linhas = $stdin.gets.strip
  if linhas.to_i > 0 
    case opcao
    when '1'
      gerador_cpf(linhas)
    when '2'
      gerador_cnpj(linhas)
    when '3'
      gerador_nif(linhas)
    when '4'
      gerador_num(linhas)
    when '5'
      gerador_pis(linhas)
    when '6'
      gerador_cei(linhas)
    when '7'
      gerador_num(linhas)
      gerador_cpf(linhas)
      gerador_cnpj(linhas)
      gerador_nif(linhas)
      gerador_pis(linhas)
      gerador_cei(linhas)
    else
      puts '!!Opção invalida, escolha novamente!!'
      puts "\n"
    end
  else
    @result = false
  end
  if @result == true
    print("!!Arquivos Criados com sucesso!! \n")
    puts "\n"
  else
    puts '!!Erro na geração dos arquivos!!'
    puts "\n"
  end
  menu()
end

def menu
  print("""| Escolha quais dados aleatorios quer gerar:
| 1 - CPF
| 2 - CNPJ
| 3 - NIF
| 4 - Numeros
| 5 - PIS
| 6 - CEI
| 7 - Todos
| 8 - Sair 
| Escolher: """)
  opcao = $stdin.gets.strip
  if(opcao == '8' )
    return
  end
  escolha(opcao)
end

def main
  verifica_diretorio()
  menu()
end

main()
