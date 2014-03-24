class CreateEnderecofuncionarios < ActiveRecord::Migration
  def change
    create_table :enderecofuncionarios do |t|
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.integer :cep

      t.timestamps
    end
  end
end
