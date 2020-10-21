require 'test_helper'

class PacienteTest < ActiveSupport::TestCase
  test "Criar um Paciente Valido Teste" do
    @paciente = Paciente.new(email: "edgar@gmail.com",
                             password: "123456",
                             password_confirmation: "123456",
                             nome: "Edgar",
                             cpf: 12345678945,
                             altura: 177,
                             data_nascimento: "22/08/2000")
    assert @paciente.save()
  end

  test "Não criar um Paciente com email invalido teste" do
    @paciente = Paciente.new(email: "edgar",
                             password: "123456",
                             password_confirmation: "123456",
                             nome: "Edgar",
                             cpf: 12345678945,
                             altura: 177,
                             data_nascimento: "22/08/2000")
    assert_not @paciente.save()
  end

  test "O email deve ser unico teste" do
    @paciente = Paciente.new(email: "edgar@gmail.com",
                             password: "123456",
                             password_confirmation: "123456",
                             nome: "Edgar",
                             cpf: 12345678945,
                             altura: 177,
                             data_nascimento: "22/08/2000")
    @paciente1 = Paciente.new(email: "edgar@gmail.com",
                              password: "123456",
                              password_confirmation: "123456",
                              nome: "Edgar",
                              cpf: 12345678945,
                              altura: 177,
                              data_nascimento: "22/08/2000")
    @paciente.save()
    assert_not @paciente1.save()
  end
end
