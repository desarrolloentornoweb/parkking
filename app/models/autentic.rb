class Autentic < ApplicationRecord
  belongs_to :tipo_usuario

  	validates :correo, presence: {message: " es requerido."},uniqueness: { message: "ya esta siendo usado.", case_sensitive: false }
	validates :tipo_usuario_id, presence: {message: " es requerido."}
	validates :contrasena, presence: {message: " es requerido."}
end
