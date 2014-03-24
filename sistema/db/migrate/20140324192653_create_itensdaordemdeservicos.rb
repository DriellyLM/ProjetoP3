class CreateItensdaordemdeservicos < ActiveRecord::Migration
  def change
    create_table :itensdaordemdeservicos do |t|
      t.string :itensos
      t.integer :quantidade
      t.references :ordemdeservico, index: true
      t.references :servico, index: true

      t.timestamps
    end
  end
end
