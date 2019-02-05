require 'test_helper'

class SesionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sesion_new_url
    assert_response :success
  end

  test "should get create" do
    get sesion_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sesion_destroy_url
    assert_response :success
  end

end
