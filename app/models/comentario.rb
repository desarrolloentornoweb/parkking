class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :autenticacion
end
