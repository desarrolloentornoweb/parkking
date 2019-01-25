require 'test_helper'

class SeguridadControllerTest < ActionDispatch::IntegrationTest
  test "should get Login" do
    get seguridad_Login_url
    assert_response :success
  end

  test "should get RecupContr" do
    get seguridad_RecupContr_url
    assert_response :success
  end

end
