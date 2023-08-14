Então('vou até a tela de empresa para validar os campos') do                 
    # Acessando a empresa pela navegacao de telas
    @common.nav_def('Empresa','Empresas', 'label[class="DefinitionsTitle"]')
end                                                                          
                                                                             
Quando('vou para a criação de empresas para validar os campos') do           
  find('span[class="PlusButton"]').click
end                                                                          
                                                                             
Então('passo por todos os campos em Portugues-BR na criação') do |table|     
  valor_resoureces = table.rows_hash
  @validadores.validar_nome_Campos(valor_resoureces)
end                                                                          
                                                                             
Quando('altero uma empresa para validar os campos') do                       
  @consultores.consulta_acessa_empresa_cnpj
end                                                                          
                                                                             
Então('passo por todos os campos em portugues-BR no update') do |table|      
  valor_resoureces = table.rows_hash
  @validadores.validar_nome_Campos(valor_resoureces)
end             

Dado('que acesso a tela de empresa-EN') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('acesso a criação de empresas-EN') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('todos os campos do create serão validados em Ingles') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que acesso a tela de empresas-EN') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('acesso o update de empresas-EN') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('todos os campos do update serão validados em Ingles') do
  pending # Write code here that turns the phrase above into concrete actions
end
                                                                             