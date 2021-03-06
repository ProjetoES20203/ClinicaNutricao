require 'test_helper'

=begin

class ConsultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consult = consults(:one)
  end

  test "should get index" do
    get consults_url
    assert_response :success
  end

  test "should get new" do
    get new_consult_url
    assert_response :success
  end

  test "should create consult" do
    assert_difference('Consult.count') do
      post consults_url, params: { consult: { data: @consult.data, paciente_id: @consult.paciente_id, prontuario: @consult.prontuario } }
    end

    assert_redirected_to consult_url(Consult.last)
  end

  test "should show consult" do
    get consult_url(@consult)
    assert_response :success
  end

  test "should get edit" do
    get edit_consult_url(@consult)
    assert_response :success
  end

  test "should update consult" do
    patch consult_url(@consult), params: { consult: { data: @consult.data, paciente_id: @consult.paciente_id, prontuario: @consult.prontuario } }
    assert_redirected_to consult_url(@consult)
  end

  test "should destroy consult" do
    assert_difference('Consult.count', -1) do
      delete consult_url(@consult)
    end

    assert_redirected_to consults_url
  end
end
=end