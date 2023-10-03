#language: pt

@br
@br_definicoes
@br_filial
@br_filial_verifica
Funcionalidade: Verificação dos campos das filiais
    Rotina responsável pela verificação dos dados que são aceito pelos campos e mensagens de obrigatoriedade

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de filiais e acesso a criação de empresas para validar os campos

    @br_filial_verifica_obrigatoriedade_campos
    Cenario: Validando a obrigatoriedade dos campos na criação de filiais
        Dado que entro na criação de filial e clico em salvar
        Então deverá informar as seguintes obrigatoriedades na criação de filiais
            |codigo          |Por favor adicione um código                     |
            |telefone        |Por favor introduza um telefone                  |
            |razao_social    |Por favor introduza uma razão social             |
            |cnpj_cpf        |Por favor introduza um CNPJ/CPF                  |
            |endereço        |Por favor introduza um endereço                  |
            |cidade          |Por favor introduza uma cidade                   |
            |bairro          |Por favor introduza um bairro                    |
            |uf              |Por favor introduza um UF                        |

    @br_filial_verifica_limite_campos
    Cenario: Validando os valores limites dos campos na criação de filiais
        Dado que preencho os dados da filial focando no limite dos campos e clico em salvar
        Quando acesso a filial recem criada com o limite dos campos
        Então devera conter somente a quantidade de caracteres aceitos pelos campos de cadastro da filial
            |Filial_Telefone          |11111111111111111111                                                                                                                                                                                    |
            |Filial_Endereco          |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
            |Filial_Bairro            |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                        |
            |Filial_Cidade            |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                        |
            |Filial_UF                |xx                                                                                                                                                                                                      |
            |Filial_Pais              |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                                                      |
            |Filial_URL               |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
            |Filial_Email             |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.br                                                                                                                        |
            |ConnectChave_ChaveConnect|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                                                                        |

    @br_filial_verifica_tipos_caracteres_campos
    Cenario: Validando os tipos de caracteres dos campos na criação de filiais
        Dado que preencho os dados da filial com varios tipos de caracteres e clico em salvar
        Quando acesso a filial recem criada com os tipos de caracteres diferentes 
        Então devera conter somente os caracteres aceitos pelos campos de cadastro da filial 
            |Filial_Telefone          |11111111111111111111                                                                                                                                                                             |
            |Filial_Endereco          |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333|
            |Filial_Bairro            |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111                                                                                                                        |
            |Filial_Cidade            |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111                                                                                                                        |
            |Filial_UF                |1a                                                                                                                                                                                               |
            |Filial_Pais              |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y                                                                                                                                               |
            |Filial_URL               |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333|
            |Filial_Email             |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.br                                                                                                                 |
            |ConnectChave_ChaveConnect|1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p                                                                                                                                                                 |