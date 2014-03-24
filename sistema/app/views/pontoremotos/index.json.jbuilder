json.array!(@pontoremotos) do |pontoremoto|
  json.extract! pontoremoto, :id, :endereco
  json.url pontoremoto_url(pontoremoto, format: :json)
end
