#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_verifica
Funcionalidade: Verificação de campos
    Rotina responsável pela verificação dos dados que são aceito pelos campos

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de empresa e acesso a criação de empresas para validar os campos

    @br_empresa_verifica_obrigatoriedade_campos
    Cenario: Validando a obrigatoriedade dos campos
        Dado que entro na criação de empresa e clico em salvar
        Então deverá informar as seguintes mensagens
            |codigo          |Por favor adicione um código                     |
            |telefone        |Por favor introduza um telefone                  |
            |razao_social    |Por favor introduza uma razão social             |
            |cnpj_cpf        |Por favor introduza um CNPJ/CPF                  |
            |endereço        |Por favor introduza um endereço                  |
            |cidade          |Por favor introduza uma cidade                   |
            |periodo_abertura|Por favor introduza o dia de abertura do período.|
            |bairro          |Por favor introduza um bairro                    |
            |uf              |Por favor introduza um UF                        |

    @br_empresa_verifica_limite_campos
    Cenario: Validando os valores limites dos campos
        Dado que preencho os dados focando no limite dos campos e clico em salvar
        Quando acesso a empresa recem criada com o limite dos campos
        Então devera conter somente a quantidade de caracteres aceitos pelos campos
            |Empresa_Telefone         |11111111111111111111                                                                                                                                                                                    |
            |Empresa_Endereco         |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
            |Empresa_Bairro           |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                        |
            |Empresa_Cidade           |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                        |
            |Empresa_UF               |xx                                                                                                                                                                                                      |
            |Empresa_Pais             |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                                                      |
            |Empresa_URL              |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
            |Empresa_Email            |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.br                                                                                                                        |
            |connectChave_ChaveConnect|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                                                                                                                                        |

    @br_empresa_verifica_tipos_caracteres_campos
    Cenario: Validando os tipos de caracteres dos campos
        Dado que preencho os dados com varios tipos de caracteres e clico em salvar
        Quando acesso a empresa recem criada com os tipos de caracteres diferentes 
        Então devera conter somente os caracteres aceitos pelos campos 
            |Empresa_Telefone         |11111111111111111111                                                                                                                                                                               |
            |Empresa_Endereco         |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333  |
            |Empresa_Bairro           |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111                                                                                                                          |
            |Empresa_Cidade           |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111                                                                                                                          |
            |Empresa_UF               |1a                                                                                                                                                                                                 |
            |Empresa_Pais             |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y                                                                                                                                                 |
            |Empresa_URL              |1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p1q1r1s1t1u1v1x1w1y1z1!@#$%¨&*?:><^`'11111111111111111111111111111111111111111111111111111222222222222222222222222222222222222222222222222222222222222222222223333  |
            |Empresa_Email            |xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx@xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com.br                                                                                                                   |
            |connectChave_ChaveConnect|1a2b3c4d5e6f7g8h9i1j0k1l1m1n1o1p                                                                                                                                                                   |
