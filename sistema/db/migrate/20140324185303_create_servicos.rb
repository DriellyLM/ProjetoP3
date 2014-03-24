class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :tipodeservico

      t.timestamps
    end
  end
end
