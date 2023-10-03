#language: pt

@br
@br_definicoes
@br_filial
@br_filial_persistencia
Funcionalidade: Validação do cadastro da filial com informações repetidas
    Rotina responsavel pela verificação dos dados já salvos no banco
    
    Contexto: Acessando a tela de filiais
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de filial e acesso a criação de Filiais para validar a persistencia dos dados

    @br_filial_persistencia_codigo
    Cenario: Validando o cadastro de filial com codigo repetido
        Dado que preencho os dados utilizando um codigo já existente em outra filial e clico em salvar
        Então devera apresentar a mensagem do codigo da filial "Já existe uma Filial com o código inserido"


    #@br_filial_persistencia_razao_social
    #Cenario: Validando o cadastro de filial com razão social repetida
    #    Dado que preencho os dados utilizando uma razão social já existente em outra filial e clico em salvar
    #    Então devera apresentar a mensagem da razão social da filial "A Razão Social escolhida já está em uso."


    @br_filial_persistencia_cnpj
    Cenario: Validando o cadastro de filial com CNPJ repetido
        Dado que preencho os dados utilizando um CNPJ já existente em outra filial e clico em salvar
        Então devera apresentar a mensagem do CNPJ da filial "Já existe uma Empresa com o CNPJ/CPF inserido"

    @br_filial_persistencia_cpf
    Cenario: Validando o cadastro de filial com CPF repetido
        Dado que preencho os dados utilizando uma CPF já existente em outra filial e clico em salvar
        Então devera apresentar a mensagem do CPF da filial "Já existe uma Empresa com o CNPJ/CPF inserido"