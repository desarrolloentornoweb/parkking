Rails.application.routes.draw do

  resources :alquilers
  resources :comentarios
  resources :usuarios
  #get 'sesion/new'
  #post 'sesion/create'
  #get 'sesion/destroy'
  resources :autenticacions

  resources :serv_adicinales
  resources :estacionamientos
  resources :sesion, only: [:new, :create]
  get 'login', to: 'sesion#new', as: 'login'
  get 'logout', to: 'sesion#destroy', as: 'logout'
  get 'busqueda/BuscarFiltro'
  get 'publicidad/PrincipalPublic'
  get 'publicidad/RegPublic'
  post 'publicidad/RegPublic'
  get 'publicidad/EditPublic'
  get 'publicidad/ElimPublic'
  get 'serv_adicionales/ServEstac'
  get 'serv_adicionales/RegServicio'
  post 'serv_adicionales/RegServicio'
  get 'estacionamiento/DetalleEstac'
  get 'estacionamiento/RegEstac'
  post 'estacionamiento/RegEstac'
  get 'estacionamiento/EditEstac'
  post 'estacionamiento/EditEstac'
  get 'estacionamiento/ElimEstac'
  get 'estacionamiento/ListarEstac'
  get 'alquiler/RegAlquiler'
  post 'alquiler/RegAlquiler'
  get 'alquiler/HistoricoEstac'
  get 'alquiler/AlquilerxFecha'
  get 'comentario/RegComentario'
  get 'usuario/CambPass'
  get 'usuario/CrearCuenta'
  get 'usuario/PrincipalCli'
  get 'usuario/EditPerfil'
  post 'usuario/crear'
  post 'usuario/modificar'
  post 'usuario/baja'
  post 'usuario/cambiar'
  get 'usuario/ElimCuenta'
  get 'usuario/PrincipalDue'
  post 'usuario/PrincipalDue'
  get 'seguridad/Login'
  post 'seguridad/Login'
  get 'seguridad/RecupContr'
  post 'seguridad/RecupContr'
  post 'seguridad/validar'
  post 'seguridad/recuperar'
  get 'home/Index'
  get 'home/Contactenos'
  post 'home/EnvioContactenos'
  get 'home/Nosotros'
  root 'home#Index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
