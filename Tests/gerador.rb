require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_cnpj'
require 'fileutils'
require 'nif'

def Gerador_pis(linhas)
  algarismopis = [3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'PIS-' + time.to_s
  count = 0

  while count < linhas.to_i
    basepis = []
    numaleatorio = Faker::Number.number(digits: 10)
    basepis = numaleatorio.to_s.split('')

    divisor = 11
    acrescimo = 0
    cont = 0
    fase2 = Array.new
    pos_alga = 0
    pos_fase3 = 0
    pis_gerado = ''

    basepis.each do |pos|
      fase2.push(pos.to_i * algarismopis[pos_alga])
      pos_alga += 1
    end

    fase3 = fase2.inject(:+)
    fase5 = fase3/divisor
    fase6 = fase3.remainder(divisor)

    if (divisor - fase6 == 10)
      fase7 = 0
    elsif (divisor - fase6 == 11)
      fase7 = 0
    else
      fase7 = divisor - fase6
    end

    basepis.each do |pos|
      pis_gerado << pos.to_s
    end
    pis_gerado << fase7.to_s

    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(pis_gerado.to_s + "\n")
    end
  count += 1
  end

end

def Gerador_cpf(linhas)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'CPF-' + time.to_s
  while num < linhas.to_i
    text = CPF.generate
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text + "\n")
    end
  end
end

def Gerador_cnpj(linhas)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'CNPJ-' + time.to_s
  while num < linhas.to_i
    text = CNPJ.generate
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text + "\n")
    end
  end
end

def Gerador_nif(linhas)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'NIF-' + time.to_s
  while num < linhas.to_i
    text = Nif::Generator.generate
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text + "\n")
    end
  end
end

def Gerador_num(linhas, quant)
  num = 0
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'Num-' + time.to_s
  while num < linhas.to_i
    text = Faker::Number.number(digits: quant).to_s
    num += 1
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text + "\n")
    end
  end
end

def Menu
  print("Escolha quais dados aleatorios quer gerar: \n")
  print('1 - CPF | ')
  print('2 - CNPJ | ')
  print('3 - NIF | ')
  print('4 - Numeros | ')
  print('5 - PIS: ')
end

def Escolha
  opcao = $stdin.gets.strip
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
    Gerador_num(linhas, quant)
  when '5'
    Gerador_pis(linhas)
  else
    Base()
  end
end

def Base
  Menu()
  Escolha()
  print('!!Arquivos Criados com sucesso!!')
end

Base()
