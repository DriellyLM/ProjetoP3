json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :cpf, :sexo, :datanascimento, :cargofuncionario_id, :enderecofuncionario_id
  json.url funcionario_url(funcionario, format: :json)
end
