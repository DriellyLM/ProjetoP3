json.array!(@itensdaordemdeservicos) do |itensdaordemdeservico|
  json.extract! itensdaordemdeservico, :id, :itensos, :quantidade, :ordemdeservico_id, :servico_id
  json.url itensdaordemdeservico_url(itensdaordemdeservico, format: :json)
end
