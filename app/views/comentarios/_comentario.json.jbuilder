json.extract! comentario, :id, :puntuacion, :descripcion, :usuario_id, :autenticacion_id, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
