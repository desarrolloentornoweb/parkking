class ServAdicinale < ApplicationRecord
	validates :nombre, presence: {message: " es requerido."}
	validates :precio, presence: {message: " es requerido."}
end
