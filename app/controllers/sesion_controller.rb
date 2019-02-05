class SesionController < ApplicationController
  def new
  end

  def create
  	puts params[:correo]
  	#correo=Autenticacion.find_by_correo(params[:correo])
  	#puts correo
  end

  def destroy
  	session[:user_id] = nil
    #redirect_to root_url, notice: "Logged out!"
  end
end
