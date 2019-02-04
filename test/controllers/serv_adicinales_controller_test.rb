require 'test_helper'

class ServAdicinalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serv_adicinale = serv_adicinales(:one)
  end

  test "should get index" do
    get serv_adicinales_url
    assert_response :success
  end

  test "should get new" do
    get new_serv_adicinale_url
    assert_response :success
  end

  test "should create serv_adicinale" do
    assert_difference('ServAdicinale.count') do
      post serv_adicinales_url, params: { serv_adicinale: { nombre: @serv_adicinale.nombre, precio: @serv_adicinale.precio } }
    end

    assert_redirected_to serv_adicinale_url(ServAdicinale.last)
  end

  test "should show serv_adicinale" do
    get serv_adicinale_url(@serv_adicinale)
    assert_response :success
  end

  test "should get edit" do
    get edit_serv_adicinale_url(@serv_adicinale)
    assert_response :success
  end

  test "should update serv_adicinale" do
    patch serv_adicinale_url(@serv_adicinale), params: { serv_adicinale: { nombre: @serv_adicinale.nombre, precio: @serv_adicinale.precio } }
    assert_redirected_to serv_adicinale_url(@serv_adicinale)
  end

  test "should destroy serv_adicinale" do
    assert_difference('ServAdicinale.count', -1) do
      delete serv_adicinale_url(@serv_adicinale)
    end

    assert_redirected_to serv_adicinales_url
  end
end
