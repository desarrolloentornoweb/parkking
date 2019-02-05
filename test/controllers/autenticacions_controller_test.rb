require 'test_helper'

class AutenticacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autenticacion = autenticacions(:one)
  end

  test "should get index" do
    get autenticacions_url
    assert_response :success
  end

  test "should get new" do
    get new_autenticacion_url
    assert_response :success
  end

  test "should create autenticacion" do
    assert_difference('Autenticacion.count') do
      post autenticacions_url, params: { autenticacion: { contrasena: @autenticacion.contrasena, correo: @autenticacion.correo, tipo_usuario_id: @autenticacion.tipo_usuario_id } }
    end

    assert_redirected_to autenticacion_url(Autenticacion.last)
  end

  test "should show autenticacion" do
    get autenticacion_url(@autenticacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_autenticacion_url(@autenticacion)
    assert_response :success
  end

  test "should update autenticacion" do
    patch autenticacion_url(@autenticacion), params: { autenticacion: { contrasena: @autenticacion.contrasena, correo: @autenticacion.correo, tipo_usuario_id: @autenticacion.tipo_usuario_id } }
    assert_redirected_to autenticacion_url(@autenticacion)
  end

  test "should destroy autenticacion" do
    assert_difference('Autenticacion.count', -1) do
      delete autenticacion_url(@autenticacion)
    end

    assert_redirected_to autenticacions_url
  end
end
