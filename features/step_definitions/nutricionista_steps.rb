Given ("Eu estou na pagina de cadastro do nutricionista") do
  visit("nutris/sign_up")
  expect(page).to have_current_path("/nutris/sign_up")
end

When ("Eu cadastro o nutricionista com o email {string},  password {string}, password confirmation {string}, nome {string} e crn {string}") do |email, password, password_confirmation, nome, crn|
  fill_in "email", :with => email
  fill_in "password", :with => password
  fill_in "password_confirmation", :with => password_confirmation
  fill_in "nome", :with => nome
  fill_in "crn", :with => crn
  click_button "submit"
end

Then ("Eu vejo a mensagem {string}") do |mensagem|
  expect(page).to have_content(mensagem)
end

Then ("Eu vejo um erro que o crn nao pode estar em branco") do
  expect(page).to have_content("Crn can't be blank")
end

And ("Eu estou na pagina de login do nutricionista") do
  visit("nutris/sign_in")
  expect(page).to have_current_path("/nutris/sign_in")
end
And ("Eu faço login com o email {string},  password {string}") do |email, password|
  fill_in "email", :with => email
  fill_in "password", :with => password
  click_button "submit"
end