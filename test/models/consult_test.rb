require 'test_helper'

class ConsultTest < ActiveSupport::TestCase
  test "Cadastrar Consulta Valida" do
    @paciente = Paciente.new(email: "edgar@gmail.com",
                             password: "123456",
                             password_confirmation: "123456",
                             nome: "Edgar",
                             cpf: 12345678945,
                             altura: 177,
                             data_nascimento: "22/08/2000")
    @consulta = Consult.new(data: "20/10/2020",
                            prontuario: "Paciente com sobrepeso")
    @paciente.consults << @consulta
     assert @paciente.save()
  end

  test "Não Cadastrar Consulta Invalida" do
    @paciente = Paciente.new(email: "edgar@gmail.com",
                             password: "123456",
                             password_confirmation: "123456",
                             nome: "Edgar",
                             cpf: 12345678945,
                             altura: 177,
                             data_nascimento: "22/08/2000")
    @consulta = Consult.new(data: "20/10/2020",
                            prontuario: "")
    @paciente.consults << @consulta
    assert_not @paciente.save()
  end
end
