class SeguridadController < ApplicationController
  def Login
  end

  def RecupContr
  end

  def validar
    @correo=Autenticacion.find_by_correo(params[:upc][:correo])  
    if @correo.contrasena==params[:upc][:contrasena]
  	 session[:usuario] = @correo.correo
     session[:idusuario] = @correo.id
     session[:tipousuario] = @correo.tipo_usuario_id
    	if @correo.tipo_usuario_id==1 
        @estacionamientos = Estacionamiento.all         
          
    		render "usuario/PrincipalCli"
    	else
        if @correo.tipo_usuario_id==2
          @estacionamientos = Estacionamiento.all  
    		  render "usuario/PrincipalDue"
        else
          render "publicidad/RegPublic"
        end
    	end 
    else
      #flash.now[:alert] = "Email or password is invalid"
    end      
  end
  
  def recuperar
    session[:usuario] = params[:upc][:usuario]
    render "usuario/PrincipalCli"
  end
end
