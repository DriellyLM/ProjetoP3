class CreateItensdopedidos < ActiveRecord::Migration
  def change
    create_table :itensdopedidos do |t|
      t.string :itempedido
      t.integer :quantidade
      t.references :pedido, index: true
      t.references :produto, index: true

      t.timestamps
    end
  end
end
