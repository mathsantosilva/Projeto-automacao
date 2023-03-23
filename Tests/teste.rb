def consulta_arquivo_empresa
    File.open("arquivos_testes/ListaEmailsGerados.txt", 'r') do |f|
      leitura = f.readlines
      tam = leitura.count
      linha = leitura[tam -1]
      linha_cortade = linha.split('|')
      cnpj_sujo = linha_cortade[0].split()
      numero_cnpj = cnpj_sujo[1]
      print("sera: " + numero_cnpj.to_s)
  
      f.close
    end
  end
  
  puts Time.new.strftime("01-%m-%Y")