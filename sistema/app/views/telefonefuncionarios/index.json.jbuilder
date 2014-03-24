json.array!(@telefonefuncionarios) do |telefonefuncionario|
  json.extract! telefonefuncionario, :id, :numerotelefone, :funcionario_id
  json.url telefonefuncionario_url(telefonefuncionario, format: :json)
end
