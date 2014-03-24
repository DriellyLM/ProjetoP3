json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :datapedido, :dataenvio, :ordemdeservico_id
  json.url pedido_url(pedido, format: :json)
end
