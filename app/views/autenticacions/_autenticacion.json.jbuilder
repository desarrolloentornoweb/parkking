json.extract! autenticacion, :id, :correo, :contrasena, :tipo_usuario_id, :created_at, :updated_at
json.url autenticacion_url(autenticacion, format: :json)
