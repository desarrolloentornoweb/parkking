json.extract! estacionamiento, :id, :nombre, :departamento, :provincia, :distrito, :direccion, :latitud, :longitud, :lunes, :martes, :miercoles, :jueves, :viernes, :sabado, :domingo, :hinicio, :hcierre, :telf, :nespac, :largo, :ancho, :alto, :precio, :img, :created_at, :updated_at
json.url estacionamiento_url(estacionamiento, format: :json)
