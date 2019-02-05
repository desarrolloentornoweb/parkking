class UsuarioController < ApplicationController
  def CambPass
  end

  def CrearCuenta
  end

  def PrincipalCli
    @alquilers = Alquiler.all
  end

  def EditPerfil
  end

  def ElimCuenta
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
      #session[:usuario]=""
      render "home/Index"
  end

  def crear      
      @post = Autenticacion.new(autenticacion_params)
      @post.save
      render "home/Index"
  end

  private 
  def autenticacion_params
    params.require(:cuenta).permit(:correo, :contrasena)
  end

  def cambiar
    if session[:usuario]=="cliente@gmail.com"
      render "usuario/PrincipalCli"
    else
      render "usuario/PrincipalDue"
    end
  end
  
end
