class BusquedaController < ApplicationController
  def BuscarFiltro
  	@estacionamientos=Estacionamiento.all
  end
end
