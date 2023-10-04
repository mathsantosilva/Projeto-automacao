#language: pt

@br
@br_definicoes
@br_relatorio_personalizado
Funcionalidade: Criação de empresa
    Rotina responsavel pela criação de relatorio personalizado

    Contexto: Acessando a tela de cadastro de relatorio personalizado
        Dado que realizo o login pela tela de login em "Dimep/Account/LogOn" no ambiente BR
        Então faço o caminho até a tela cadastro de relatorio personalizado

    @br_relatorio_personalizado_create_completo
    Cenario: Criação de relatorio personalizado completo
        Dado que preenche as colunas, insere todos os campos e insere o nome "Rel total" no relatorio
            |Evento1                       |Adicional Noturno          |
            |Evento2                       |Atraso Abonado             |
            |Evento3                       |Atrasos                    |
            |Evento4                       |Desconto de DSR            |
            |Evento5                       |Domingo Trabalhado         |
            |Evento6                       |DSR Abonado                |
            |Evento7                       |Falta Abonada              |
            |Evento8                       |Faltas                     |
            |Evento9                       |Folga Trabalhada           |
            |Evento10                      |Hora Extra 100%            |
            |Evento11                      |Hora Extra 50%             |
            |Evento12                      |Hora Extra Noturna 100%    |
            |Evento13                      |Hora Extra Noturna 50%     |
            |Evento14                      |Horas a Trabalhar          |
            |Evento15                      |Horas DSR                  |
            |Justificativa1                |Atestado Médico            |
            |Justificativa2                |Atraso Ônibus/Metrô        |
            |Justificativa3                |Atraso/Falta – Debitar BH  |
            |Justificativa4                |Hora Extra – Creditar BH   |
            |Justificativa5                |Saída a Serviço            |
            |Justificativa6                |Saída Antecipada           |
            |Justificativa7                |Trânsito Congestionado     |
            |Ocorrência1                   |Atraso                     |
            |Ocorrência2                   |Banco Horas Credito        |
            |Ocorrência3                   |Banco Horas Debito         |
            |Ocorrência4                   |Falta                      |
            |Ocorrência5                   |Hora Extra                 |
            |Ocorrência6                   |Hora Extra Ad. Noturno     |
            |Ocorrência7                   |Horas Trabalhadas          |
            |Ocorrência8                   |Inconsistência             |
            |Ocorrência9                   |Intervalo 11 Horas         |
            |Marcação1                     |Automático                 |
            |Marcação2                     |Editado                    |
            |Marcação3                     |Indevido                   |
            |Marcação4                     |Original                   |
            |Marcação5                     |Web                        |
            |Marcação6                     |Marcações Importação Acesso|
            |Marcação7                     |Marcações Integração API   |
            |Marcação8                     |Marcações via Desktop      |
            |Marcação9                     |Vinculado a obra           |
            |Marcação10                    |Mobile                     |
            |Marcação11                    |Mobile Offline             |
            |Horário1                      |vazio                      |
            |Data1                         |DDMMYYYY                   |
            |Data2                         |MMYYYY                     |
            |Data3                         |YYYY                       |
            |Data4                         |YYYYMM                     |
            |Data5                         |YYYYMMDD                   |
            |Data6                         |DD/MM/YYYY                 |
            |Data7                         |MM/YYYY                    |
            |Data8                         |DD-MM-YYYY                 |
            |Data9                         |MM-YYYY                    |
            |Data10                        |MM                         |
            |Justificativa Edição de Ponto1|vazio                      |
            |Informações de Empresa1       |Código                     |
            |Informações de Empresa2       |CEI/CNO/CAEPF              |
            |Informações de Empresa3       |Razão Social               |
            |Informações de Empresa4       |CNPJ/CPF                   |
            |Informações de Empresa5       |Ramo de atividade          |
            |Informações de Empresa6       |Fuso horário               |
            |Informações de Funcionário1   |Nome Completo               |
            |Informações de Funcionário2   |Nome Social                 |
            |Informações de Funcionário3   |Matricula                   |
            |Informações de Funcionário4   |Data de Admissão            |
            |Informações de Funcionário5   |Data de Demissão            |
            |Informações de Funcionário6   |Crachá                      |
            |Informações de Funcionário7   |Descrição da Estrutura      |
            |Informações de Funcionário8   |Código da Estrutura         |
            |Informações de Funcionário9   |Centro de Custo da Estrutura|
            |Informações de Funcionário10  |Descrição do Grupo          |
            |Informações de Funcionário11  |Código do Grupo             |
            |Informações de Funcionário12  |Cargo                       |
            |Informações de Funcionário13  |Descrição do Horário        |
            |Informações de Funcionário14  |Código do Horário           |
            |Informações de Funcionário15  |Horário da Jornada          |
            |Informações de Funcionário16  |Carga Suplementar           |
            |Informações de Funcionário17  |Regra de Cálculo            |
            |Informações de Funcionário18  |Feriados                    |
            |Informações de Funcionário19  |Base de Horas               |
            |Informações de Funcionário20  |Valor da Hora               |
            |Informações de Funcionário21  |Limite de horas de alocação |
            |Informações de Funcionário22  |Tipo funcionário            |
            |Informações de Funcionário23  |Campo Alternativo 1         |
            |Informações de Funcionário24  |Campo Alternativo 2         |
            |Informações de Funcionário25  |Campo Alternativo 3         |
            |Informações de Funcionário26  |Extra 1                     |
            |Informações de Funcionário27  |Extra 2                     |
            |Informações de Funcionário28  |Extra 3                     |
            |Informações de Funcionário29  |Extra 4                     |
            |Informações de Funcionário30  |Extra 5                     |
            |Informações de Funcionário31  |Extra 6                     |
            |Informações de Funcionário32  |Extra 7                     |
            |Informações de Funcionário33  |Extra 8                     |
            |Informações de Funcionário34  |Extra 9                     |
            |Informações de Funcionário35  |Extra 10                    |
            |Informações de Funcionário36  |PIS                         |
            |Informações de Funcionário37  |CPF                         |
            |Fórmula1                      |Horas                       |
            #|Fórmula2                      |Decimal                    |
            #|Fórmula3                      |Inteiro                    |
            #|Fórmula4                      |Texto                      |
        Então deverá cadastrar o relatorio e informar "O Relatório Personalizado foi adicionado com sucesso"


    @br_relatorio_personalizado_create_valores
    Cenario: Criação de relatorio personalizado com os campos de valores
        Dado que preenche as colunas, insere somente o valor e insere o nome "Rel valor" no relatorio
            |Evento1                       |Adicional Noturno          |
            |Evento2                       |Atraso Abonado             |
            |Evento3                       |Atrasos                    |
            |Evento4                       |Desconto de DSR            |
            |Evento5                       |Domingo Trabalhado         |
            |Evento6                       |DSR Abonado                |
            |Evento7                       |Falta Abonada              |
            |Evento8                       |Faltas                     |
            |Evento9                       |Folga Trabalhada           |
            |Evento10                      |Hora Extra 100%            |
            |Evento11                      |Hora Extra 50%             |
            |Evento12                      |Hora Extra Noturna 100%    |
            |Evento13                      |Hora Extra Noturna 50%     |
            |Evento14                      |Horas a Trabalhar          |
            |Evento15                      |Horas DSR                  |
            |Justificativa1                |Atestado Médico            |
            |Justificativa2                |Atraso Ônibus/Metrô        |
            |Justificativa3                |Atraso/Falta – Debitar BH  |
            |Justificativa4                |Hora Extra – Creditar BH   |
            |Justificativa5                |Saída a Serviço            |
            |Justificativa6                |Saída Antecipada           |
            |Justificativa7                |Trânsito Congestionado     |
            |Ocorrência1                   |Atraso                     |
            |Ocorrência2                   |Banco Horas Credito        |
            |Ocorrência3                   |Banco Horas Debito         |
            |Ocorrência4                   |Falta                      |
            |Ocorrência5                   |Hora Extra                 |
            |Ocorrência6                   |Hora Extra Ad. Noturno     |
            |Ocorrência7                   |Horas Trabalhadas          |
            |Ocorrência8                   |Inconsistência             |
            |Ocorrência9                   |Intervalo 11 Horas         |
            |Marcação1                     |Automático                 |
            |Marcação2                     |Editado                    |
            |Marcação3                     |Indevido                   |
            |Marcação4                     |Original                   |
            |Marcação5                     |Web                        |
            |Marcação6                     |Marcações Importação Acesso|
            |Marcação7                     |Marcações Integração API   |
            |Marcação8                     |Marcações via Desktop      |
            |Marcação9                     |Vinculado a obra           |
            |Marcação10                    |Mobile                     |
            |Marcação11                    |Mobile Offline             |
            |Horário1                      |vazio                      |
            |Data1                         |DDMMYYYY                   |
            |Data2                         |MMYYYY                     |
            |Data3                         |YYYY                       |
            |Data4                         |YYYYMM                     |
            |Data5                         |YYYYMMDD                   |
            |Data6                         |DD/MM/YYYY                 |
            |Data7                         |MM/YYYY                    |
            |Data8                         |DD-MM-YYYY                 |
            |Data9                         |MM-YYYY                    |
            |Data10                        |MM                         |
            |Justificativa Edição de Ponto1|vazio                      |
            |Informações de Empresa1       |Código                     |
            |Informações de Empresa2       |CEI/CNO/CAEPF              |
            |Informações de Empresa3       |Razão Social               |
            |Informações de Empresa4       |CNPJ/CPF                   |
            |Informações de Empresa5       |Ramo de atividade          |
            |Informações de Empresa6       |Fuso horário               |
            |Informações de Funcionário1   |Nome Completo               |
            |Informações de Funcionário2   |Nome Social                 |
            |Informações de Funcionário3   |Matricula                   |
            |Informações de Funcionário4   |Data de Admissão            |
            |Informações de Funcionário5   |Data de Demissão            |
            |Informações de Funcionário6   |Crachá                      |
            |Informações de Funcionário7   |Descrição da Estrutura      |
            |Informações de Funcionário8   |Código da Estrutura         |
            |Informações de Funcionário9   |Centro de Custo da Estrutura|
            |Informações de Funcionário10  |Descrição do Grupo          |
            |Informações de Funcionário11  |Código do Grupo             |
            |Informações de Funcionário12  |Cargo                       |
            |Informações de Funcionário13  |Descrição do Horário        |
            |Informações de Funcionário14  |Código do Horário           |
            |Informações de Funcionário15  |Horário da Jornada          |
            |Informações de Funcionário16  |Carga Suplementar           |
            |Informações de Funcionário17  |Regra de Cálculo            |
            |Informações de Funcionário18  |Feriados                    |
            |Informações de Funcionário19  |Base de Horas               |
            |Informações de Funcionário20  |Valor da Hora               |
            |Informações de Funcionário21  |Limite de horas de alocação |
            |Informações de Funcionário22  |Tipo funcionário            |
            |Informações de Funcionário23  |Campo Alternativo 1         |
            |Informações de Funcionário24  |Campo Alternativo 2         |
            |Informações de Funcionário25  |Campo Alternativo 3         |
            |Informações de Funcionário26  |Extra 1                     |
            |Informações de Funcionário27  |Extra 2                     |
            |Informações de Funcionário28  |Extra 3                     |
            |Informações de Funcionário29  |Extra 4                     |
            |Informações de Funcionário30  |Extra 5                     |
            |Informações de Funcionário31  |Extra 6                     |
            |Informações de Funcionário32  |Extra 7                     |
            |Informações de Funcionário33  |Extra 8                     |
            |Informações de Funcionário34  |Extra 9                     |
            |Informações de Funcionário35  |Extra 10                    |
            |Informações de Funcionário36  |PIS                         |
            |Informações de Funcionário37  |CPF                         |
            |Fórmula1                      |Horas                       |
            #|Fórmula2                      |Decimal                    |
            #|Fórmula3                      |Inteiro                    |
            #|Fórmula4                      |Texto                      |
        Então deverá cadastrar o relatorio e informar "O Relatório Personalizado foi adicionado com sucesso"