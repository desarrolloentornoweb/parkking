class ComentarioController < ApplicationController
  def RegComentario
  	@registrar=Comentario.new
  end

  def enviarcomentario
  	@registrar = Comentario.new(comentario_params)
  	@registrar.save
  end

  private
  def comentario_params
  	params.require(:comentario).permit(:descripcion, :idopinionref, :puntuacion, :idusuario, :idestacionamiento)
  end

end
