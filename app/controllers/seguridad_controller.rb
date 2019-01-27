class SeguridadController < ApplicationController
  def Login
  end

  def RecupContr
  end

  def validar
  	#puts params[:upc][:usuario]
  	session[:usuario] = params[:upc][:usuario]
  	if session[:usuario]=="cliente@gmail.com"
  		render "usuario/PrincipalCli"
  	else
        if session[:usuario]=="dueño@gmail.com"
  		  render "usuario/PrincipalDue"
      else
        render "publicidad/RegPublic"
       end
  	end  		
  end
  
  def recuperar
    session[:usuario] = params[:upc][:usuario]
    render "usuario/PrincipalCli"
  end
end
