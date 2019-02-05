class Usuario < ApplicationRecord
  belongs_to :autenticacion
  belongs_to :distrito
  belongs_to :tipo_documento
end
