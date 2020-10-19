Feature: Paciente
  As a Nutricionista
  I want to cadastrar um paciente no sistema
  so that o paciente possa ganhar acesso ao sistema

  Scenario: Cadastrar Paciente Valido
    Given Eu estou logado no sistema como nutricionista
    When Eu acesso a pagina de cadastro de pacientes
    And Eu cadastro o paciente com o email 'edgar@gmail.com',  password '123456', password confirmation '123456', nome 'Edgar Vinicius', cpf '10851498154', altura '178' e data_nascimento '18/06/1997'
    Then Eu vejo o paciente de nome 'Edgar Vinicius' e email 'edgar@gmail.com'

  Scenario: Cadastrar Paciente com cpf invalido
    Given Eu estou logado no sistema como nutricionista
    When Eu acesso a pagina de cadastro de pacientes
    And Eu cadastro o paciente com o email 'edgar1@gmail.com',  password '123456', password confirmation '123456', nome 'Edgar Vinicius', cpf '10851498', altura '178' e data_nascimento '18/06/1999'
    Then Eu vejo uma mensagem de erro sobre o cpf invalido

