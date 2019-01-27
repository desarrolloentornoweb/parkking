class UsuarioController < ApplicationController
  layout 'dueño', except: [:PrincipalCli]
  layout 'cliente', except: [:PrincipalDue]
  def CambPass
  end

  def CrearCuenta
  end

  def PrincipalCli
  end

  def EditPerfil
  end

  def ElimCuenta
  end

  def PrincipalDue
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
      render "home/Index"
  end

  def cambiar
    if session[:usuario]=="cliente@gmail.com"
      render "usuario/PrincipalCli"
    else
      render "usuario/PrincipalDue"
    end
  end
  
end
