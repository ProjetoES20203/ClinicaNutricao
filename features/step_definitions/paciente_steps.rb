Given ("Eu estou logado no sistema como nutricionista") do
  visit("nutris/sign_up")
  expect(page).to have_current_path("/nutris/sign_up")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  fill_in "password_confirmation", :with => "123456"
  fill_in "nome", :with => "nome"
  fill_in "crn", :with => "1212"
  click_button "submit"
  visit("nutris/sign_in")
  expect(page).to have_current_path("/nutris/sign_in")
  fill_in "email", :with => "teste@gmail.com"
  fill_in "password", :with => "123456"
  click_button "submit"
end
When ("Eu acesso a pagina de cadastro de pacientes") do
  visit("pacientes/sign_up")
  expect(page).to have_current_path("/pacientes/sign_up")
end
And ("Eu cadastro o paciente com o email {string},  password {string}, password confirmation {string}, nome {string}, cpf {string}, altura {string} e data_nascimento {string}") do |email, password, password_confirmation, nome, cpf, altura, data_nascimento|
  fill_in "email", :with => email
  fill_in "password", :with => password
  fill_in "password_confirmation", :with => password_confirmation
  fill_in "nome", :with => nome
  fill_in "altura", :with => altura
  fill_in "cpf", :with => cpf
  fill_in "data_nascimento", :with => data_nascimento
  click_button "submit"
end

Then ("Eu vejo o paciente de nome {string} e email {string}") do |nome, email|
  expect(page).to have_content(nome)
  expect(page).to have_content(email)
end


Then ("Eu vejo uma mensagem de erro sobre o cpf invalido") do
  expect(page).to have_content("Cpf is too short (minimum is 11 characters)")
end