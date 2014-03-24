json.array!(@niveldeacessos) do |niveldeacesso|
  json.extract! niveldeacesso, :id, :descricaonivel
  json.url niveldeacesso_url(niveldeacesso, format: :json)
end
