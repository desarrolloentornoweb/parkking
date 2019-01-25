require 'test_helper'

class BusquedaControllerTest < ActionDispatch::IntegrationTest
  test "should get BuscarFiltro" do
    get busqueda_BuscarFiltro_url
    assert_response :success
  end

end
