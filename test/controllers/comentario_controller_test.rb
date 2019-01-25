require 'test_helper'

class ComentarioControllerTest < ActionDispatch::IntegrationTest
  test "should get RegComentario" do
    get comentario_RegComentario_url
    assert_response :success
  end

end
