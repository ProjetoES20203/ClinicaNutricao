Feature:Consulta
  As a Nutricionista
  I want cadastrar, alterar e visualizar uma consulta
  so that Eu possa manipular a consulta e o paciente possa visualiza-la

  Scenario: Cadastrar Consulta Valida
    Given Eu estou logado no sistema como nutricionista
    And Existe um paciente cadastrado
    When Eu acesso a pagina de consultas do paciente
    And Eu cadastro uma consulta com prontuario 'Paciente acima do peso com tipo fisico endomorfo'
    Then Eu vejo a consulta de prontuario 'Paciente acima do peso com tipo fisico endomorfo'

  Scenario: Cadastrar Consulta com prontuario invalido
    Given Eu estou logado no sistema como nutricionista
    And Existe um paciente cadastrado
    When Eu acesso a pagina de consultas do paciente
    And Eu cadastro uma consulta com prontuario 'O pa'
    Then Eu vejo uma mensagem de erro sobre o prontuario invalido

  Scenario: Visualizar Consulta
    Given Eu estou logado no sistema como nutricionista
    And Existe um paciente cadastrado
    When Eu acesso a pagina de consultas do paciente
    And Eu cadastro uma consulta com prontuario 'Paciente acima do peso com tipo fisico endomorfo'
    And Eu acesso a consulta recem criada
    Then Eu vejo o prontuario 'Paciente acima do peso com tipo fisico endomorfo'