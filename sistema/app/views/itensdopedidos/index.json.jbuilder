json.array!(@itensdopedidos) do |itensdopedido|
  json.extract! itensdopedido, :id, :itempedido, :quantidade, :pedido_id, :produto_id
  json.url itensdopedido_url(itensdopedido, format: :json)
end
