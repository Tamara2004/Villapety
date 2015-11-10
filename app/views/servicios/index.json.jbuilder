json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :tratamiento, :valor, :cita, :producto
  json.url servicio_url(servicio, format: :json)
end
