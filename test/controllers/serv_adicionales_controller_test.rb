require 'test_helper'

class ServAdicionalesControllerTest < ActionDispatch::IntegrationTest
  test "should get ServEstac" do
    get serv_adicionales_ServEstac_url
    assert_response :success
  end

  test "should get RegServicio" do
    get serv_adicionales_RegServicio_url
    assert_response :success
  end

end
