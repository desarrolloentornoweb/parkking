require 'test_helper'

class AlquilerControllerTest < ActionDispatch::IntegrationTest
  test "should get RegAlquiler" do
    get alquiler_RegAlquiler_url
    assert_response :success
  end

  test "should get HistoricoEstac" do
    get alquiler_HistoricoEstac_url
    assert_response :success
  end

  test "should get AlquilerxFecha" do
    get alquiler_AlquilerxFecha_url
    assert_response :success
  end

end
