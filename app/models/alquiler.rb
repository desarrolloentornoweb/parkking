class Alquiler < ApplicationRecord

  belongs_to :estacionamiento
  	validates :fecha, presence: {message: " es requerido."}
    validates :hora, presence: {message: " es requerido."}
    validates :nhora, presence: {message: " es requerido."}
    validates :tpaog, presence: {message: " es requerido."}

end
