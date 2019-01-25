require 'test_helper'

class PublicidadControllerTest < ActionDispatch::IntegrationTest
  test "should get PrincipalPublic" do
    get publicidad_PrincipalPublic_url
    assert_response :success
  end

  test "should get RegPublic" do
    get publicidad_RegPublic_url
    assert_response :success
  end

  test "should get EditPublic" do
    get publicidad_EditPublic_url
    assert_response :success
  end

  test "should get ElimPublic" do
    get publicidad_ElimPublic_url
    assert_response :success
  end

end
