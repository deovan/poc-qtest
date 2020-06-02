#language: pt

@CDP @UC03 @WEB @SPRINT04 @TFA @TFAPENDENTE
Funcionalidade: UC03.1 - Emissão Consulta e Edição de TFAs - Filtros Listagem TFAs Pendentes

  Cenario:  CT01 - Validar detalhes do TFA pendente
    Dado que eu tenha as configurações necessárias cadastradas para preencher o novo tfa
    E cadastro os TFAs pendentes
    Quando que eu navegue até o Controle de Perdas
    E efetue login com perfil com permissão de Edição
    E acesso a TAB TFA
    E acesso a TAB de Gerenciamento de TFA
    Entao clico na TAB TFA Pendentes
    E clico no botão editar TFA da linha 1
    Entao valida os detalhes da TFA pendente

  Esquema do Cenario:  <CT> - Pesquisar TFA aberto pelo campo <CAMPO>
    Dado acesso a TAB TFA
    E acesso a TAB de Gerenciamento de TFA
    E clico na TAB TFA Pendentes
    Quando eu busque por "<CAMPO>" na listagem de TFA
    Então deve exibir o resultado da busca no campo "<CAMPO>" na listagem de TFA

    Exemplos:
      | CT   | CAMPO              |
      | CT02 | NUMERO DO PROCESSO |
      | CT03 | CODIGO VAGAO       |

  Esquema do Cenario: <CT> - Valida filtro da modal com resultado válidos para TFA Abertos - <FILTRO>
    E clico na TAB TFA Pendentes
    Quando clico no botão Filtrar de TFA
    E insiro um filtro para "<FILTRO>" no filtro de TFA
    E clico no botão Filtrar da modal de filtro de TFA
    Entao deve ser exibido os registros que se enquadra com o filtro "<FILTRO>" na lista de TFA "Pendentes"
    Exemplos:
      | CT   | FILTRO       |
      | CT04 | DATA INICIAL |
      | CT05 | DATA FINAL   |
      | CT06 | CAUSA        |
      | CT07 | VAGAO        |
      | CT08 | SINDICANCIA  |
      | CT09 | ORIGEM       |
      | CT10 | CLIENTE      |

  Cenario: CT11 - Editar um TFA para indevido
    Dado clico no botão editar TFA da linha 1
    Quando eu edito um TFA pendente para Indevido
    Então o processo divergente ao editado deve ser exibido na listagem de abertos
    E clico na TAB TFA Concluído
    Entao valido o TFA divergente concluído na linha 1
