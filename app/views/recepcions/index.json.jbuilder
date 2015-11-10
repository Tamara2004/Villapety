json.array!(@recepcions) do |recepcion|
  json.extract! recepcion, :id, :nombre, :apellido, :cargo, :telefono
  json.url recepcion_url(recepcion, format: :json)
end
