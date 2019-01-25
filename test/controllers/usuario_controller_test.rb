require 'test_helper'

class UsuarioControllerTest < ActionDispatch::IntegrationTest
  test "should get CrearCuenta" do
    get usuario_CrearCuenta_url
    assert_response :success
  end

  test "should get PrincipalCli" do
    get usuario_PrincipalCli_url
    assert_response :success
  end

  test "should get EditPerfil" do
    get usuario_EditPerfil_url
    assert_response :success
  end

  test "should get ElimCuenta" do
    get usuario_ElimCuenta_url
    assert_response :success
  end

  test "should get PrincipalDue" do
    get usuario_PrincipalDue_url
    assert_response :success
  end

end
