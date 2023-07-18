Dado('que entro na tela de login em {string} no ambiente BR') do |path|                             
    visit path
    @common.inserir_cookie_local

  end                                                                                                   
                                                                                                        
  Dado('que insiro os dados de email e senha corretos') do |table|                                      
    user = table.rows_hash
    @login.logar(user[:email], user[:senha])                    
  end                                                                                                   
                                                                                                        
  Então('deverá logar com sucesso na empresa BR e estar no path {string}') do |paht_site|                  
    expect(page).to have_current_path(paht_site)                        
  end                                                                                                   
                                                                                                        
  Dado('que insiro os dados de email e senha incorretos') do |table|                                    
    user = table.rows_hash
    @login.logar(user[:email], user[:senha])                     
  end                                                                                                   
                                                                                                        
  Então('devera informar a mensagem {string}') do |message_success|                                              
    expect(find('div[id="dialogError"] h1[class="spanError"]')).to have_content message_success
  end                                                                                                   
                                                                                                        
  Dado('que insiro os dados de email incorreto e senha') do |table|                                     
    user = table.rows_hash
    @login.logar(user[:email], user[:senha])                      
  end                                                                                                   
                                                                                                        
  Então('devera apresentar a mensagem {string}') do |message_success|                                            
    expect(find('div[id="dialogError"] h1[class="spanError"]')).to have_content message_success                      
  end                                                                                                   
                                                                                                        
  Dado('acesso a tela de alteração de senha') do                                                        
    find('div[class="form-inline"] a:nth-last-child(1)').click  
  end                                                                                                   
                                                                                                        
  Quando('Insiro os dados atuais de login e senha') do |table|                                          
    user = table.rows_hash
    fill_in 'Username', with: user[:email], visible: false
    fill_in 'Password', with: user[:senha], visible: false
    fill_in 'NewPassword', with: '2', visible: false
    fill_in 'RepeatNewPassword', with: '2', visible: false
    find('input[class="Pointer submitLogin"]', visible: false).click
    print('validar')
    expect(find('div[class="validation-summary-ok"]')).to have_content 'Senha alterada com sucesso.'
    within('div[class="RecoverPassword"]') do
      find('a[href="/Dimep/Account/LogOn"]', text: "Iniciar sessão »", visible: false).click  
    end
  end                                                                                                   
                                                                                                        
  Quando('insiro os dados de email e nova senha') do |table|                                            
    user = table.rows_hash
    @login.logar(user[:email], user[:senha])                       
  end                                                                                                   
                                                                                                        
  Então('deverá logar com sucesso com a nova senha na empresa BR e estar no path {string}') do |path_site| 
    expect(page).to have_current_path(path_site)                       
  end                                                                                                   