json.array!(@cliente_recepcions) do |cliente_recepcion|
  json.extract! cliente_recepcion, :id, :cliente_id, :recepcion_id
  json.url cliente_recepcion_url(cliente_recepcion, format: :json)
end
