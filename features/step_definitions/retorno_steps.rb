Given ("Eu cadastro um paciente") do
  visit("nutris/sign_up")
  expect(page).to have_current_path("/nutris/sign_up")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  fill_in "password_confirmation", :with => "123456"
  fill_in "nome", :with => "Josiscleidson"
  fill_in "crn", :with => "100298"
  click_button "submit"

  visit("nutris/sign_in")
  expect(page).to have_current_path("/nutris/sign_in")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  click_button "submit"

  visit("pacientes/sign_up")
  expect(page).to have_current_path("/pacientes/sign_up")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  fill_in "password_confirmation", :with => "123456"
  fill_in "nome", :with => "Josiscleidsan"
  fill_in "altura", :with => 166
  fill_in "cpf", :with => 10987123445
  fill_in "data_nascimento", :with => "25/09/1977"
  click_button "submit"
  visit("/pacientes/1/consults")
end

And("Eu estou logado no sistema como paciente") do
  click_link "Logout"

  visit("pacientes/sign_in")
  expect(page).to have_current_path("/pacientes/sign_in")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  click_button "submit"
end

When ("Eu acesso a pagina de consultas") do
  click_link "Consultas"
  expect(page).to have_current_path("/pacientes/1/consults")
end

And ("Eu acesso a pagina de retornos") do
  click_link "Retornos"
  expect(page).to have_current_path("/consults/1/retornos")
end

And ("Eu agendo um retorno") do
  click_link "Novo Retorno"
  expect(page).to have_current_path("/consults/1/retornos/new")
  click_button "submit"
end

Then ("Eu vejo o retorno com o estado {string}") do |estado|
  expect(page).to have_content(estado)
end

And("Eu visualizo o retorno recem agendado") do
  click_link "Exibir Retorno"
  expect(page).to have_current_path("/consults/1/retornos/1")
end