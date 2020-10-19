Feature:Nutricionista
  As a Usuario-Não-Logado
  I want to cadastrar e logar um nutricionista no sistema
  so that Eu possa ganhar acesso ao sistema

  Scenario: Cadastrar Nutricionista Valido
    Given Eu estou na pagina de cadastro do nutricionista
    When Eu cadastro o nutricionista com o email 'edgar@gmail.com',  password '123456', password confirmation '123456', nome 'Edgar Vinicius' e crn '108514'
    Then Eu vejo a mensagem 'Welcome! You have signed up successfully.'


  Scenario: Cadastrar Nutricionista com crn em branco
    Given  Eu estou na pagina de cadastro do nutricionista
    And Eu cadastro o nutricionista com o email 'edgar2@gmail.com',  password '123456', password confirmation '123456', nome 'Edgar Vinicius' e crn ''
    Then Eu vejo um erro que o crn nao pode estar em branco

  Scenario: Logar Nutricionista Valido
    Given Eu estou na pagina de cadastro do nutricionista
    When Eu cadastro o nutricionista com o email 'edgar@gmail.com',  password '123456', password confirmation '123456', nome 'Edgar Vinicius' e crn '108514'
    And Eu estou na pagina de login do nutricionista
    And Eu faço login com o email 'edgar@gmail.com',  password '123456'
    Then Eu vejo a mensagem 'Signed in successfully.'

