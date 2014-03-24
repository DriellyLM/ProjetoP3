class CreateItensdaos < ActiveRecord::Migration
  def change
    create_table :itensdaos do |t|
      t.string :itensos
      t.integer :quantidade
      t.references :ordemdeservico, index: true
      t.references :servico, index: true

      t.timestamps
    end
  end
end
