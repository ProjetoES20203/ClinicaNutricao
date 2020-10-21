require 'test_helper'

class RetornoTest < ActiveSupport::TestCase
  test "Cadastrar Retorno Valida" do
    @paciente = Paciente.new(email: "edgar@gmail.com",
                             password: "123456",
                             password_confirmation: "123456",
                             nome: "Edgar",
                             cpf: 12345678945,
                             altura: 177,
                             data_nascimento: "22/08/2000")
    @consulta = Consult.new(data: "20/10/2020",
                            prontuario: "Paciente com sobrepeso")

    @retorno = Retorno.new(data: "20/10/2020",
                               prontuario: "Paciente com sobrepeso")

    @consulta.retornos << @retorno
    @paciente.consults << @consulta
    assert @paciente.save()
  end
end
