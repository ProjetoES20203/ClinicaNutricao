And ("Existe um paciente cadastrado") do
  visit("pacientes/sign_up")
  expect(page).to have_current_path("/pacientes/sign_up")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  fill_in "password_confirmation", :with => "123456"
  fill_in "nome", :with => "Josiscleidson"
  fill_in "altura", :with => 157
  fill_in "cpf", :with => 10995541345
  fill_in "data_nascimento", :with => "18/02/1997"
  click_button "submit"
  expect(page).to have_current_path("/index")
end

When("Eu acesso a pagina de consultas do paciente") do
  click_link "Consultas"
  expect(page).to have_current_path("/pacientes/1/consults")
end

And("Eu cadastro uma consulta com prontuario {string}") do |prontuario|
  click_link "Nova Consulta"
  expect(page).to have_current_path("/pacientes/1/consults/new")
  fill_in "consult[prontuario]", :with => prontuario
  click_button "submit"
end

Then("Eu vejo a consulta de prontuario {string}") do |prontuario|
  expect(page).to have_content(prontuario)
end

Then("Eu vejo uma mensagem de erro sobre o prontuario invalido") do
  expect(page).to have_content("Prontuario is too short (minimum is 5 characters)")
end

And ("Eu acesso a consulta recem criada") do
  expect(page).to have_current_path("/pacientes/1/consults")
  click_link "Exibir Consulta"
end

Then("Eu vejo o prontuario {string}") do |prontuario|
  expect(page).to have_content(prontuario)
end