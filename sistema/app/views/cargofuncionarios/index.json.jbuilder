json.array!(@cargofuncionarios) do |cargofuncionario|
  json.extract! cargofuncionario, :id, :cargofuncionario
  json.url cargofuncionario_url(cargofuncionario, format: :json)
end
