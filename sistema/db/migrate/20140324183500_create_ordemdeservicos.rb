class CreateOrdemdeservicos < ActiveRecord::Migration
  def change
    create_table :ordemdeservicos do |t|
      t.string :descricaoservico
      t.string :descricaoproduto
      t.string :datainicialos
      t.string :datafinalos
      t.references :usuario, index: true
      t.references :pontoremoto, index: true

      t.timestamps
    end
  end
end
