require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'fileutils'
require 'nif'
require 'benchmark'

def Gerador_cpf(linhas)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'CPF-' << time.to_s
  while num < linhas.to_i
    text = CPF.generate
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text << "\n")
    end
  end
  @result = true
end

def Gerador_cnpj(linhas)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'CNPJ-' << time.to_s
  while num < linhas.to_i
    text = CNPJ.generate
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text << "\n")
    end
  end
  @result = true
end

def Gerador_nif(linhas)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'NIF-' << time.to_s
  while num < linhas.to_i
    text = Nif::Generator.generate
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text << "\n")
    end
  end
  @result = true
end

def Gerador_num(linhas,quant)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'Num-' << time.to_s
  while num < linhas.to_i
    text = Faker::Number.number(digits: quant).to_s
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text << "\n")
    end
  end
  @result = true
end

def Gerador_pis(linhas)
  puts Benchmark.measure {
    algarismopis = [3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    time = Time.new.strftime('%Y-%m-%d-%H-%M')
    nome = 'PIS-' << time.to_s
    count = 0
    fase2 = []
    # Fase 4 - Divisor
    divisor = 11
    pos_alga = 0
    pis_gerado = ''
    basepis = []


    linhas.to_i.times do
      puts 'antes: ' << basepis.to_s

      numaleatorio = Faker::Number.number(digits: 10)
      basepis = numaleatorio.to_s.split('')
      puts 'depois: ' << basepis.to_s
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
      # Fase 9 - Montando arquivo e escrevendo nele
        File.open("./arquivos/#{nome}.txt", 'a+') do |f|
          f.write(pis_gerado.to_s << "\n")
        end
    count += 1
    end

  }
  @result = true
end

def Escolha(opcao)
  print('Informe a quantidade de registros(Linhas): ')
  linhas = $stdin.gets.strip
  case opcao
  when '1'
    Gerador_cpf(linhas)
  when '2'
    Gerador_cnpj(linhas)
  when '3'
    Gerador_nif(linhas)
  when '4'
    print('Informe a quantidade de numeros por linhas: ')
    quant = $stdin.gets.strip.to_i
    Gerador_num(linhas,quant)
  when '5'
    Gerador_pis(linhas)
  when '6'
    print('Informe a quantidade de numeros por linhas: ')
    quant = $stdin.gets.strip.to_i
    Gerador_cnpj(linhas)
    Gerador_cpf(linhas)
    Gerador_nif(linhas)
    Gerador_num(linhas,quant)
    Gerador_pis(linhas)
  else
    puts '!!Opção invalida, escolha novamente!!'
    puts "\n"
  end
  if @result == true
    print("!!Arquivos Criados com sucesso!! \n")
    puts "\n"
  else
    puts '!!Erro na geração dos arquivos!!'
    puts "\n"
  end
  Main()
end

def Menu
  print("Escolha quais dados aleatorios quer gerar: \n")
  print('1 - CPF | ')
  print('2 - CNPJ | ')
  print('3 - NIF | ')
  print('4 - Numeros | ')
  print('5 - PIS | ')
  print('6 - Todos | ')
  print('7 - Sair |: ')
  opcao = $stdin.gets.strip
  if(opcao == '7' )
    return
  end
  Escolha(opcao)
end

def Main
    Menu()
end

Main()
