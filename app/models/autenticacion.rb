class Autenticacion < ApplicationRecord
  belongs_to :tipo_usuario

    validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
uniqueness: { message: "El correo ya existe", case_sensitive: false }

validates :contrasena, presence: {message: " Ingresar una contraseña"}

validates :tipo_usuario, presence: {message: " Seleccionar un tipo de usuario "}
end
