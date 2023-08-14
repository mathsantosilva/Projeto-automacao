#language: pt

@br
@br_definicoes
@br_empresa
@br_empresa_persistencia
Funcionalidade: Validação do cadastro da empresa com informações repetidas
    Rotina responsavel pela verificação dos dados já salvos no banco

    Contexto: Acessando a tela de empresas
        Dado que acesso a tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então vou até a tela de empresa e acesso a criação de empresas para validar a persistencia dos dados

    @br_empresa_persistencia_codigo
    Cenario: Validando o cadastro de empresa com codigo repetido
        Dado que preencho os dados utilizando um codigo já existente e clico em salvar
        Então devera apresentar a mensagem do codigo "Já existe uma Empresa com o código inserido"


    @br_empresa_persistencia_razao_social
    Cenario: Validando o cadastro de empresa com razão social repetida
        Dado que preencho os dados utilizando uma razão social já existente e clico em salvar
        Então devera apresentar a mensagem da razão social "A Razão Social escolhida já está em uso."


    @br_empresa_persistencia_cnpj
    Cenario: Validando o cadastro de empresa com CNPJ repetido
        Dado que preencho os dados utilizando um CNPJ já existente e clico em salvar
        Então devera apresentar a mensagem do CNPJ "Já existe uma Empresa com o CNPJ/CPF inserido"

    @br_empresa_persistencia_cpf
    Cenario: Validando o cadastro de empresa com CPF repetido
        Dado que preencho os dados utilizando uma CPF já existente e clico em salvar
        Então devera apresentar a mensagem do CPF "Já existe uma Empresa com o CNPJ/CPF inserido"