json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :login, :senha, :ativo, :funcionario_id, :niveldeacesso_id
  json.url usuario_url(usuario, format: :json)
end
