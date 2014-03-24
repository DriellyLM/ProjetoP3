json.array!(@produtos) do |produto|
  json.extract! produto, :id, :quantidade, :numeroee, :dataentradaestoque, :datasaidaestoque
  json.url produto_url(produto, format: :json)
end
