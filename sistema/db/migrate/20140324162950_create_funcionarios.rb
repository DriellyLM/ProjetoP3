class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :email
      t.string :telefone
      t.string :nome
      t.string :cpf
      t.string :sexo
      t.string :datanascimento
      t.references :cargofuncionario, index: true
      t.references :enderecofuncionario, index: true

      t.timestamps
    end
  end
end
