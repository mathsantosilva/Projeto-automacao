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

def gerador_de_arquivos(nome,linhas,escolha,quant,lista_pis)
  num = 0
  count = 0

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
        text = lista_pis[count].to_s
        count += 1
    end
    File.open("./arquivos/#{nome}.txt", 'a+') do |f|
      f.write(text << "\n")
    end
    num += 1
  end
end

def gerador_cpf(linhas)
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'CPF-' << time.to_s
  quant = 0
  escolha = "CPF"
  lista_pis = []
  gerador_de_arquivos(nome,linhas,escolha,quant,lista_pis)
  @result = true
end

def gerador_cnpj(linhas)
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'CNPJ-' << time.to_s
  quant = 0
  escolha = "CNPJ"
  lista_pis = []
  gerador_de_arquivos(nome,linhas,escolha,quant,lista_pis)
  @result = true
end

def gerador_nif(linhas)
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'NIF-' << time.to_s
  quant = 0
  escolha = "NIF"
  lista_pis = []
  gerador_de_arquivos(nome,linhas,escolha,quant,lista_pis)
  @result = true
end

def gerador_num(linhas)
  print('Informe a quantidade de numeros por linhas: ')
  quant = $stdin.gets.strip.to_i

  if quant.to_i > 0 
    time = Time.new.strftime('%Y-%m-%d-%H-%M')
    nome = 'Num-' << time.to_s
    escolha = "NUM"
    lista_pis = []
    gerador_de_arquivos(nome,linhas,escolha,quant,lista_pis)
  else
    @result = false
    return
  end
  @result = true
end

def gerador_pis(linhas)
  algarismopis = [3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
  time = Time.new.strftime('%Y-%m-%d-%H-%M')
  nome = 'PIS-' << time.to_s
  escolha = "PIS"
  quant = 0
  fase2 = []
  # Fase 4 - Divisor
  divisor = 11
  pos_alga = 0
  basepis = []
  lista_pis = []
  contador = 1


  linhas.to_i.times do
    pis_gerado = ''
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
      lista_pis.push(pis_gerado)
  end
  # Fase 9 - Montando arquivo e escrevendo nele
  gerador_de_arquivos(nome,linhas,escolha,quant,lista_pis)
  @result = true
end

def escolha(opcao)
  print('Informe a quantidade de registros(Linhas): ')
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
      gerador_num(linhas)
      gerador_cpf(linhas)
      gerador_cnpj(linhas)
      gerador_nif(linhas)
      gerador_pis(linhas)
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
  escolha(opcao)
end

def main
  verifica_diretorio()
  menu()
end

main()
