
json.extract! alquiler, :id, :fecha, :hora, :nhora, :tpaog, :estacionamiento_id, :created_at, :updated_at

json.url alquiler_url(alquiler, format: :json)
