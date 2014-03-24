json.array!(@emailfuncionarios) do |emailfuncionario|
  json.extract! emailfuncionario, :id, :email, :funcionario_id
  json.url emailfuncionario_url(emailfuncionario, format: :json)
end
