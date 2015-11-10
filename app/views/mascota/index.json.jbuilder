json.array!(@mascota) do |mascotum|
  json.extract! mascotum, :id, :nombre, :edad, :raza, :servicio_id
  json.url mascotum_url(mascotum, format: :json)
end
