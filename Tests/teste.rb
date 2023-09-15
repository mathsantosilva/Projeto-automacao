require 'fileutils'

def consulta_arquivo_empresa
  # Setando o nome das pastas
  screenshots_folder = 'screenshots'
  screenshots_folder2 = 'historico'
  scenario_folder = "teste123"

  # Verifica se as pastas existem e a cria se necessário
  Dir.mkdir(screenshots_folder) unless File.directory?(screenshots_folder)
  Dir.mkdir("#{screenshots_folder}/#{scenario_folder}") unless File.directory?("#{screenshots_folder}/#{scenario_folder}")
  arquivos = Dir.children("#{screenshots_folder}/#{scenario_folder}")
  if arquivos.length > 0
    puts "#{screenshots_folder}/#{scenario_folder}/#{screenshots_folder2}"
    Dir.mkdir("#{screenshots_folder}/#{scenario_folder}/#{screenshots_folder2}") unless File.directory?("#{screenshots_folder}/#{scenario_folder}/#{screenshots_folder2}")
    for arq in arquivos do
      puts "#{screenshots_folder}/#{scenario_folder}/#{arq}"
      if File.directory?("#{screenshots_folder}/#{scenario_folder}/#{arq}")
        puts "Teste987"
      else
        begin
          puts arq
          FileUtils.mv("#{screenshots_folder}/#{scenario_folder}/#{arq}", "#{screenshots_folder}/#{scenario_folder}/#{screenshots_folder2}")
        rescue StandardError => e
          puts "Erro em mover arquivo: #{e}"
        end
      end
    end
  end
  screenshot_name = "error_#{Time.now.strftime('%Y-%m-%d-%H%M%S')}.txt"
  File.new(File.join("#{screenshots_folder}/#{scenario_folder}", screenshot_name), "a")
end
  
consulta_arquivo_empresa