json.array!(@servicos) do |servico|
  json.extract! servico, :id, :tipodeservico
  json.url servico_url(servico, format: :json)
end
