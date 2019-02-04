class Autenticacion < ApplicationRecord
	validates :correo, :presence => true,
                    :length => { :minimum => 5 }
    has_many :comments
end
