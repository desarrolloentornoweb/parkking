require 'test_helper'

class EstacionamientoControllerTest < ActionDispatch::IntegrationTest
  test "should get DetalleEstac" do
    get estacionamiento_DetalleEstac_url
    assert_response :success
  end

  test "should get RegEstac" do
    get estacionamiento_RegEstac_url
    assert_response :success
  end

  test "should get EditEstac" do
    get estacionamiento_EditEstac_url
    assert_response :success
  end

  test "should get ElimEstac" do
    get estacionamiento_ElimEstac_url
    assert_response :success
  end

  test "should get ListarEstac" do
    get estacionamiento_ListarEstac_url
    assert_response :success
  end

end
