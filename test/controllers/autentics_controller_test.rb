require 'test_helper'

class AutenticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autentic = autentics(:one)
  end

  test "should get index" do
    get autentics_url
    assert_response :success
  end

  test "should get new" do
    get new_autentic_url
    assert_response :success
  end

  test "should create autentic" do
    assert_difference('Autentic.count') do
      post autentics_url, params: { autentic: { contrasena: @autentic.contrasena, correo: @autentic.correo, tipo_usuario_id: @autentic.tipo_usuario_id } }
    end

    assert_redirected_to autentic_url(Autentic.last)
  end

  test "should show autentic" do
    get autentic_url(@autentic)
    assert_response :success
  end

  test "should get edit" do
    get edit_autentic_url(@autentic)
    assert_response :success
  end

  test "should update autentic" do
    patch autentic_url(@autentic), params: { autentic: { contrasena: @autentic.contrasena, correo: @autentic.correo, tipo_usuario_id: @autentic.tipo_usuario_id } }
    assert_redirected_to autentic_url(@autentic)
  end

  test "should destroy autentic" do
    assert_difference('Autentic.count', -1) do
      delete autentic_url(@autentic)
    end

    assert_redirected_to autentics_url
  end
end
