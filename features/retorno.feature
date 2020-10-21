Feature:Retorno Paciente
  As a Paciente
  I want Marcar um retorno
  so that Eu possa ser atendido pelo nutricionista

  Scenario: Marcar Retorno Valido
    Given Eu cadastro um paciente
    And Eu cadastro uma consulta com prontuario 'Paciente acima do peso com tipo fisico endomorfo'
    And Eu estou logado no sistema como paciente
    When Eu acesso a pagina de consultas
    And Eu acesso a pagina de retornos
    And Eu agendo um retorno
    Then Eu vejo o retorno com o estado 'Não Realizado'

  Scenario: Visualizar Retorno Valido
    Given Eu cadastro um paciente
    And Eu cadastro uma consulta com prontuario 'Paciente acima do peso com tipo fisico endomorfo'
    And Eu estou logado no sistema como paciente
    When Eu acesso a pagina de consultas
    And Eu acesso a pagina de retornos
    And Eu agendo um retorno
    And Eu visualizo o retorno recem agendado
    Then Eu vejo o retorno com o estado 'Não Realizado'
