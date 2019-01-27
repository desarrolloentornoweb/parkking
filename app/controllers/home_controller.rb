class HomeController < ApplicationController
  def Index
  	session[:usuario]=""
  end

  def Contactenos
  	
  end
  def EnvioContactenos
  	render "home/Index"
  end

  def Nosotros
  end
end
