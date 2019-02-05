class UsuarioController < ApplicationController
  def CambPass

  end

  def CrearCuenta
  end

  def PrincipalCli

    #@estacionamientos = Estacionamiento.all  

    @alquilers = Alquiler.all

  end

  def EditPerfil
  end

  def ElimCuenta
    @baja=Baja.new
  end

  def PrincipalDue
    @post=Autenticacion.new
    @estacionamientos = Estacionamiento.all
  end

  def modificar
    if session[:usuario]=="cliente@gmail.com"
      render "usuario/PrincipalCli"
    else
      render "usuario/PrincipalDue"
    end
  end

  def baja
    @bauten=Autenticacion.find_by_id(session[:idusuario]) 
    if @bauten.contrasena==params[:upc][:contrasena]
      @baja = Baja.new(baja_params)
      @baja.save
      render "home/Index"
    end      
  end

  def crear      
      @post = Autenticacion.new(autenticacion_params)
      @post.save
      render "home/Index"
  end

  def cambiar     
    @autenticacion=Autenticacion.find_by_id(session[:idusuario]) 
    if @autenticacion.correo==params[:upc][:correo]
      if @autenticacion.contrasena==params[:upc][:contrasena]
        Autenticacion.where(id: session[:idusuario]).update_all(contrasena: params[:upc][:RPassword]) 
        if session[:tipousuario]==1        
          render "usuario/PrincipalCli"
        else
          if session[:tipousuario]==2
            render "usuario/PrincipalDue"
          else
            render "publicidad/RegPublic"
          end
        end 
      end
    end 
  end

  private 
  def autenticacion_params
    params.require(:cuenta).permit(:correo, :contrasena)
  end
  def baja_params
    params.require(:upc).permit(:motivo,:autenticacion_id)
  end
  
end
