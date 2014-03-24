class Funcionario < ActiveRecord::Base
  belongs_to :cargofuncionario
  belongs_to :enderecofuncionario
end
