json.array!(@ordemdeservicos) do |ordemdeservico|
  json.extract! ordemdeservico, :id, :descricaoservico, :descricaoproduto, :datainicialos, :datafinalos, :usuario_id, :pontoremoto_id
  json.url ordemdeservico_url(ordemdeservico, format: :json)
end
