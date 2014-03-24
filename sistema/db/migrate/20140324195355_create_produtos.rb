class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :quantidade
      t.integer :numeroee
      t.string :dataentradaestoque
      t.string :datasaidaestoque

      t.timestamps
    end
  end
end
