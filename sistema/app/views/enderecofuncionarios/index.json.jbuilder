json.array!(@enderecofuncionarios) do |enderecofuncionario|
  json.extract! enderecofuncionario, :id, :logradouro, :numero, :bairro, :cidade, :uf, :cep
  json.url enderecofuncionario_url(enderecofuncionario, format: :json)
end
