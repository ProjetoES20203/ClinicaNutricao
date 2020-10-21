require 'test_helper'

class NutriTest < ActiveSupport::TestCase
  test "Criar um Nutricionista Valido Teste" do
    @nutri = Nutri.new(email: "edgar@gmail.com",
                       password: "123456",
                       password_confirmation: "123456",
                       nome: "Edgar",
                       crn: 123456)
    assert @nutri.save()
  end

  test "Não criar um Nutricionista com email invalido teste" do
    @nutri = Nutri.new(email: "edgar",
                       password: "123456",
                       password_confirmation: "123456",
                       nome: "Edgar",
                       crn: 123456)
    assert_not @nutri.save()
  end

  test "O email deve ser unico teste" do
    @nutri = Nutri.new(email: "edgar@gmail.com",
                       password: "123456",
                       password_confirmation: "123456",
                       nome: "Edgar",
                       crn: 123456)
    @nutri1 = Nutri.new(email: "edgar@gmail.com",
                       password: "123456",
                       password_confirmation: "123456",
                       nome: "Edgar",
                       crn: 123456)
    @nutri.save()
    assert_not @nutri1.save()
  end
end
