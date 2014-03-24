class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :datapedido
      t.string :dataenvio
      t.references :ordemdeservico, index: true

      t.timestamps
    end
  end
end
